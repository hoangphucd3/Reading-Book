Collboration between each objects create dependencies.

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

Dependencies are foreign invaders that represent vulnerabilities, and they should be
conside, explicit, and isolated.

#### Isolate instance creation

The intent is to explictity expose the dependcy while reducing its reach into your class.

#### Isolate Vulnerable External Messages

external messages that are sent to someone other than `self`.

Any time you change anything you stand the chance of breaking it;

You can reduce your chance of being forced to make a chage by removing the external dependency
and encapsulating it in a method of its own.

This technique becomes necessary when a class contains embedded references to
a message that is likely to change/

### Remove Argument-Order Dependencies

You often send arguments in a specific fixed order. If that order changes,
all the senders will be forced to change.

#### Use Hashes for Initialization Arguments

Change the code to take a hash of options instead of a fixed list of parameters.

The first advantage is that it removes every dependency on argument order.

This technique adds verbosity. It exists at the intersection between the needs of the present
and the uncertainty of the future.

The secondary benefit: The `key` name in the hash furnish explicit documentation about the arguments.

But is based on personal situation.

#### Explicitly Define Defaults

This is a common technique but one you should you use with cautions;

Where you need to distinguish between `false` and `nil`, it's better to use the `fetch` method to set defaults.

You can also completely remove the defaults from `initialize` and isolate them inside of a separate wrapping method.

### Isolate Multiparameter Initialization

Sometimes you will be forced to depend on a method that requires fixed-order arguments where you do not own
and thus cannot change the method itself.

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


