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
