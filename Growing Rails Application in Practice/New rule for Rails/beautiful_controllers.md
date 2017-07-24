## Beautiful Controllers

Working with controllers remains awkward:

- It is hard to decide whether a new bit of functionality should go into your controller or
into your model. Should the model send a notification e-mail or is that the controller’s
responsibility? Where to put support code that handles the differences between model and
user interface?

- Implementing custom mappings between a model and a screen requires too much controller
code. Examples for this are actions that operate on multiple models, or a form that has
additional fields not contained in the model. It is too cumbersome to support basic interactions
like a “form roundtrip”, where an invalid form is displayed again with the offending fields
highlighted in red.

- Any kind of code put into a controller might as well sit behind a glass wall. You can see
it, but it is hard to test and experiment with it. Running controller code requires a complex
environment (request, params, sessions, etc.) which Rails must conjure for you. This makes
controllers an inaccessible habitat for any kind of code.

- Lacking clear guidelines for designing controllers, no two controllers are alike. This makes
working on existing UI a chore, since you have to understand how data flows through each
individual controller.

### The case for consistent controller design

Use a standard controller design for every single user interaction.
This reduces the mental overhead required to navigate through a large Rails application and
understand what is happening.

Having a default design approach also speeds up development of new controllers by removing
implementation decisions.

### Normalizing user interactions

The pattern we use is to reduce every user interaction to a Rails CRUD resource.

Even interactions that do not look like plain old CRUD resources can be modeled as such. A screen to
cancel a subscription can be thought of as destroying a subscription or creating a new cancellation.
A screen to upload multiple images at once can be seen as creating an image batch (even if there is
no `ImageBatch` model).

By normalizing every user interaction to a CRUD interaction, we can design a beautiful controller
layout and reuse it again and again with little changes.

### A better controller implementation

We believe that controllers deserve better:

- Controllers should receive the same amount of programming discipline as any other type of class. They should be short, DRY and easy to read.

- Controllers should provide the minimum amount of glue code to negotiate between request and model.

- Unless there are good reasons against it, controllers should be built against a standard, proven implementation blueprint.

### Why have controllers at all?

- Security (authentication, authorization)
- Parsing and white-listing parameters
- Loading or instantiating the model
- Deciding which view to render

A controller never does the heavy lifting. Controllers should contain the minimum
amount of glue to translate between the request, your model and the response.
