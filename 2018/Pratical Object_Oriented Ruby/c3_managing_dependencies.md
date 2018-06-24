## Understanding Dependencies

### Recognizing Dependencies

An object has a dependency when it knows

- The name of another class
- The name of a message that it intends to send to someone other than `self`.
- The arguments that a message requires.
- The order of those arguments.

### Coupling Between Objects (CBO)

The more tighthly coupled two objects are, the more they behave like a single entity.

## Writing Loosely Coupled Code

Reducing dependencies means recognizing and remove the ones you don't need.

### Inject Dependencies

Your class become less useful when it knows too much about other objects.
