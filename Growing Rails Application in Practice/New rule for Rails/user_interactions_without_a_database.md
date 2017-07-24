## User interactions without a database

Models do not necessarily have to be backed by a database table.
There are many UI interactions that do not result in a database change at all. Here are some examples:

- A sign in form
- A search form
- A payment form like Stripe’s where the user enters a credit card, but the credit card data is
stored on another server (using an API call)

### Writing a better sign in form

Read example in the Book.
