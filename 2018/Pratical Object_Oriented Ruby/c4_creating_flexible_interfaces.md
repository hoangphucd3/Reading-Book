 The conversation between two objects takes place using their `interfaces.`
 
 ## Understanding Interfaces
 
 Interface defines a `virtual` class, any class that implements the required methods can
 act like the `interface` kind of thing.
 
 ## Defining Interfaces
 
 ### Public Interfaces
 
 They:
 - Reveal its primary responsibility
 - Are expected to be invoked by others
 - Will not change on a whim
 - Are safe for others to depend on
 - Are thoroughly documented in the tests
 
 ### Private Interfaces
 
- Handle implementation details
- Are not expected to be sent by other objects
- Can change for any reason whatsoever
- Are unsafe for others to depend on
- May not even be referenced in the tests

## Finding the Public Interface

Good public interfaces reduce the cost of unanticipated change; bad interfaces raise it.

Domain objects has both data and behavior. They are obvious beacause they are persistent;
they stand for big, visible real-world things that will end up with a representation
in your DB.

### Using Sequence Diagrams

The message-based perspective yields more flexible applications than does the class-based perspective.

### Asking for “What” Instead of Telling “How”
Context. Example, `Trip` expect to be holding onto a `Mechanic` object that can respond to some method calls.

Objects that have a simple context area easy to resuse.
Objects that have a complicated context are hard to use and hard to test.

### Trusting other objects

This blind trust is a keystone of object-oriented design. It allows objects collaborate
without binding themeselves to context.

### Using Messages to Discover Objects

### Creating a Message-Based Application

Switching your attention from objects to messages allows you to concentrate on designing
an application built upon public interfaces.

## Writing Code That Puts Its Best (Inter)Face Forward

### Create Explicit Interfaces

Methods in `public` interface should:
- Be explicitly indentified as such
- Be more about what than how
- Have names that, insofar a you can anticipate, will not change
- Take a hash as an options parameter

