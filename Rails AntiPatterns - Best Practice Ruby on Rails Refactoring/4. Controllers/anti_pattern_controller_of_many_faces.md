## AntiPattern: Controller of Many Faces

As applications grow, RESTful controllers often take on some non-RESTful trappings.
This situation should be avoided whenever possible, and it often make sense to
extract these extra, non-RESTful actions into their own RESTful resource.

### Solution: Refactor Non-RESTful Actions into a Separate Controller

A common example of a RESTful controller taking on too much responsibility is in
authentication.

```ruby
Code goes here
```

#### What Is a Resource?

It may seem at first glance that authentication is under the mandate of the UsersController,
but with authentication, you’re really managing the concept of a user’s session. Once you begin 
to view a controller for a representation of a resource, you realize that the resource
doesn’t have to correspond directly to an Active Record model.

Note that you should use the singular version, ```resource```. A session is a great example
of a singular resource, as it makes no sense to ask for a listing of sessions, and sessions
have no concept of a unique identifier

#### When RESTful Actions Aren’t RESTful

While this solution is about identifying and extracting non-RESTful actions in a
RESTful controller, there are some exceptions to this solution to be aware of.

#### Simply Strong OOP

Each controller should contain only
the logic that pertains to the resource it represents. Failing to abide by this principle
will lead you down the slippery slope that ends in the monolithic controller problem.

 Furthermore, this type of refactoring can reveal code smells at the Model
layer
