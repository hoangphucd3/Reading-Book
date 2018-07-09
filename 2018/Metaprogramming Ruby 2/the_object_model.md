## Open Classes

### Inside Class Definitions

In Ruby, there is no distinction between code that defines a class and a code of any other kind.

You can always reopen existing classes and modify them on the fly. This technique is called `Open Class`.

Although it's cool, however, Open Classes have a dark side. They'd call it a `Monkeypatch`.

## Inside the Object Model

### What's in an Object

#### Instance Variables

Objects contain instance variables. 

#### Methods

Most objects inherit a number of methods from Object.

Let's warp it all up: An object's instance variables live in the object itself,
and an object's methods live in the object's class. That's why objects of the same class
share methods but don't share in instance variables.

### The truth about classes

BasicObject is the root of the RUby class hierarchy, which contains only a few essential methods.

#### Modules

Usually, when you pick:

- Module: when you want it to be included somewhere.
- Class: when you mean it to be instantiated or inherited.

### Constants

