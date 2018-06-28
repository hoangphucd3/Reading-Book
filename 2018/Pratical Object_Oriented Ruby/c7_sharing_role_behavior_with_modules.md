## Understanding Roles

a `role` is sharing behavior among unrelated objects.

### Finding Roles

Reducing costs with duck typing is a role.

In Ruby, you can use `module`. It provides a perfect way to allow objects of different classes
to play a common role using single set of code.

### Organizing Responsibilities

Instead of knowing details about other clases, you should send them messages.

### Removing Unnecessary Dependencies

Class knows too much about information of other classes.

#### Discovering the Schedulable Duck Type

#### Letting Objects Speak for Themselves

Objects should manage themeselves; the should contain their own behavior.

If your interest is in object B, you should not be forced to know about object A
if your only use of it is to find things about object B.

### Writing the Concrete Code

### Extracting the Abstraction

