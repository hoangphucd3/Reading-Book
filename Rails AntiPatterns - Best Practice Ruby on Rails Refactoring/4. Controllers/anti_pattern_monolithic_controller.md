## AntiPattern: Monolithic Controllers

### Solution: Embrace REST

```ruby
def users
  per_page = Variable::default_pagination_value
  @users = User.find(:all)
  # First, check to see if there
  # was an operation performed
  if not params[:operation].nil? then
    if (params[:operation] == "reset_password") then
      user = User.find(params[:id])
      user.generate_password_reset_access_key
      user.password_confirmation = user.password
      user.email_confirmation = user.email
      user.save!
      flash[:notice] = user.first_name + " " +
        user.last_name + "'s password has been reset."
    end
```

This ```AdminController``` object has a ```users``` action.  The ```users``` action expects an additional
parameter, operation, which takes values that determine what functionality occurs within the action.

Controller naming is very important, and the name of the controller in this case may indicate a problem.

-- In progess -- 
