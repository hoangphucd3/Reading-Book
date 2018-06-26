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

### Isolate Depedencies

While this is technically possible it may not be actually possible.

If you cannot remove unnescesary dependencies, you should isolate them within your class.

#### Isolate instance creation

The intent is to explictity expose the dependcy while reducing its reach into your class.

#### Isolate Vulnerable External Messages

external messages that are sent to someone other than `self`.

Any time you change anything you stand the chance of breaking it;

This technique becomes necessary when a class contains embedded references to
a message that is likely to change/

### Remove Argument-Order Dependencies

You often send arguments in a specific fixed order. If that order changes,
all the senders will be forced to change.

#### Use Hashes for Initialization Arguments

Change the code to take a hash of options instead of a fixed list of parameters.

This techique has several advantages. The first is that it removes every dependency on argument order.

This technique adds verbosity.

But is based on personal situation.

#### Explicitly Define Defaults

### Managing Dependency Direction

#### Reversing Dependencies

#### Choosing Dependency Direction

Three simple truths about code:

- Some classes are more likely than others to have changes in requirements.
- Concrete classes are more likely to change than abstract classes.
- Changing a class that has many dependents will result in widespread consequences.

The term `abstract` represents an idea about code as opposed to a specific technical restriction.

The abstraction was harvested from a concrete class; the idea is now 'disasociated from any specific instance'.

Abstractions represent common, stable qualities. They are less likely to change.

Depending on an abstraction is always better safer than depending on a concretion because by its very nature.


