## AntiPattern: Authorization Astronaut

Many applications contain user authorization code, typically represented as user roles.
Typical user authorization might feature a User model like the following.

```ruby
class User < ActiveRecord::Base 
  has_and_belongs_to_many :roles, :uniq => true
  
  def has_role?(role_in_question)
    self.roles.first(:conditions => { :name => role_in_question }) ? true : false
  end
  
  def has_roles?(roles_in_question) roles_in_question =
    self.roles.all(:conditions => ["name in (?)", roles_in_question])
    roles_in_question.length > 0 
  end
  
  def can_post? 
    self.has_roles?(['admin',
    'editor', 'associate editor', 'research writer'])
  end
  
  def can_review_posts?
    self.has_roles?(['admin', 'editor', 'associate editor'])
  end
  
  def can_edit_content?
    self.has_roles?(['admin', 'editor', 'associate editor'])
  end
  
  def can_edit_post?(post) self == post.user ||
    self.has_roles?(['admin', 'editor', 'associate editor']) 
  end
end
```

In this User model, a user has a relationship to many different roles
* The singular _has_role?_ that takes a single role and checks to see whether the user has that role.
* the plural _has_roles?_ that takes multiple roles and does the same

The has_role? method isn’t used. This method was written in anticipation of being needed.

Finally, the User model is hardcoding all the strings used to identify the individual roles.
Most importantly, if one or more of these changes were missed, the model would essentially fail silently.

You can accompany the preceding User model with the following _Role_ model:

```ruby
class Role < ActiveRecord::Base
  has_and_belongs_to_many :users
  
  validates_presence_of :name
  validates_uniqueness_of :name

  def name=(value)
    write_attribute("name", value.downcase)
  end
  
  def self.[](name) # Get a role quickly by using: Role[:admin] 
    self.find(:first, :conditions => ["name = ?", name.id2name])
  end

  def add_user(user) 
    self.users << user
  end
  
  def delete_user(user) 
    self.users.delete(user)
  end
end
```