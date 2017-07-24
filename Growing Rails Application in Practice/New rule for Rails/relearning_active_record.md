## Relearning ActiveRecord

ActiveRecord can be a highly effective way to implement userfacing
models, meaning models that back an interaction with a human user.

Since humans are not perfect, a user-facing model needs to revolve around dealing with broken
input data. It should make it easy to implement things like the following:

- Validation of data entered by a user (e.g. a username must not be taken, a password must have
a minimum number of characters).

- Form roundtrips: When any input field contains invalid data, the form is displayed again with
the invalid fields being highlighted. During a roundtrip all input fields retain their values. Only
when everything is valid an action is performed (like creating a record).

- Lifecycle callbacks: We want to run code at different points during the human-modelinteraction,
e.g. do something during the data validation or send an e-mail after successful
submission.

For this type of model, ActiveRecord can be a great choice. ActiveRecord is focused around error
handling and input validation. It allows you to collect and process possibly broken user input with
a minimum amount of code in controllers and views.

Unfortunately, ActiveRecord also comes with plenty of opportunities to shoot yourself in the foot.

### Understanding the ActiveRecord lifecycle

Read more about example in Book

### The true API of ActiveRecord models

Once you start expressing your model’s behavior in validations and callbacks, you realize that the
API of your models actually looks like this:

- You instantiate a record using any API that suits your needs.
- You manipulate the record using any API that suits your needs.
- Manipulating a record does not automatically commit changes to the database. Instead the
record is put into a “dirty” state. You can inspect dirty records for errors and preview the
changes that will be committed.
- Once a record passes validations, all changes can be committed to the database in a single
transaction.
