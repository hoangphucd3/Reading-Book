## AntiPattern: Rat’s Nest Resources

Nesting controllers so that the parameters to the controllers are managed and understood
by the application routes is a powerful technique. However, imagine that a website
lists all messages posted by all users and has the ability to list all the messages
posted by a single user. If the controllers for these two lists were the same controller,
the index action of that controller would look something like the following:

```ruby
class MessagesController < ApplicationController
  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      @messages = @user.messages
    else
      @messages = Message.all
    end
  end
end
```

And the routes for the above controller would be as shown here:

```ruby
resources :messages
resources :users do
  resources :messages
end
```

Finally, the view for this ` MessagesController#index` action might be something like
the following:

```ruby
<h1>Messages<% if @user %> for <%= @user.name %><% end %></h1>

<ul>
<% @messages.each do |message| %>
  <%= content_tag_for :li, @message do %>
    <span class="subject"><%= message.subject %></span>
    <% if !@user %>
    <span class="poster">Posted by <%= message.user.name %></span>
    <% end %>
    <span class="body"><%= message.body %></span>
  <% end %>
<% end %>
</ul>
```

In this example, you can see that the view is altered based on whether the instance
variable `@user` is defined.

It would become tedious and error prone to maintain one view with so much conditional logic.

### Solution: Use Separate Controllers for Each Nesting

it becomes
beneficial not to try to keep the same controller for each different resource path
but to instead create a new controller for each nesting.

You store each of these individual controllers in a directory with the same name as
its parent controller.

```
controllers/messages_controller.rb
controllers/users/messages_controller.rb
```

And the accompanying routes would be as shown here:

```ruby
resources :messages
resources :users do
  resources :messages, :controller => ‘users/messages’
end
```

Now, each version of the messages path would have its own controller and views, as
shown here:

```ruby
# controllers/messages_controller.rb
class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
end

# controllers/users/messages_controller.rb
class MessagesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @messages = @user.messages
  end
end

<!-- views/messages/index.html.erb -->
<h1>Messages</h1>

<ul>
<% @messages.each do |message| %>
  <%= content_tag_for :li, @message do %>
    <span class="subject"><%= message.subject %></span>
    <span class="poster">Posted by <%= message.user.name %></span>
    <span class="body"><%= message.body %></span> 
  <% end %>
<% end %>
</ul>

<!-- views/users/messages/index.html.erb -->
<h1>Messages for <%= @user.name %></h1>

<ul>
  <% @messages.each do |message| %>
    <%= content_tag_for :li, @message do %>
      <span class="subject"><%= message.subject %></span>
      <span class="body"><%= message.body %></span>
    <% end %>
  <% end %>
</ul>
```

Using this strategy, you might find that there is some confusion if some nested
controllers are not in subdirectories and others are. Therefore, you might find it helpful
to keep all your nested controllers in subdirectories that match their nested URLs so
that the locations of the controllers are consistent.

The technique of using separate controllers for these nested routes is less DRY,
but in the right situations, it will ultimately lead to cleaner and easier-to-maintain
code
