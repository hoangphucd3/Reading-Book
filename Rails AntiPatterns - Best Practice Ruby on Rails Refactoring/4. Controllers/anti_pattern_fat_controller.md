## AntiPattern: Fat Controller


### Solution: Use Active Record Callbacks and Setters

It’s preferable to not use exceptions as flow control because exceptions should be used only in exceptional circumstances.

#### The First Step

#### Built-in Rails Functionality

#### Default Values

#### Effective Callback Use

#### Identification of Unnecessary Code

#### Another Callback

Descriptive method naming is always important, especially for
callbacks, because it ensures that the intention and function of what can eventually be
many callbacks on a model is always clear

#### Simplified Callbacks

#### Yet Another Callback

#### Cleaned-up Code

### Solution: Move to a Presenter

#### Sign Me Up!

#### A Subtle Bug

#### You’re Doing It Wrong

One of the general guidelines we’re breaking is “Exceptions should be excep-
tional.” We’re now using exceptions to handle validation failures—a common and
expected situation for a web application.

Another guideline we’re breaking is that we’ve introduced transactions, a low-level
database concept, into the Controller layer. Typically, anytime a controller is making
explicit use of transactions, you’ve gone down the wrong path.

#### Presenting...

The presenter sits between the Model layer and the
View and Controller layers.

A presenter is simply a plain old Ruby class that orchestrates the creation of multiple models.
It can also take on the responsibility of sending emails or triggering other
events that would normally be shoehorned into a controller action.

#### And Remember to Tip Your Waitress

While you can move extra logic from your controllers into setters and callbacks on the
primary model, there are times when that’s not the right path to take.

Doing too much work in Active Record setters and callbacks can lead to unexpected behavior and 
convoluted callback chains between different models.

At times like these, it’s useful to
introduce a third-party object whose job is to manage the complexity on behalf of
your controller and models
