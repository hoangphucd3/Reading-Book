## Understanding Classical Inheritance

It defines a fowarding path for not-understool messages.
If one object cannot respond to a received message, it deligate that message to another.

## Recognizing Where to Use Inheritance

### Starting with a Concrete Class

### Embedding Multiple Types

### Finding the Ebedded Types

### Choosing Inheritance

Inheritance provides a way to define two objects.

## Misapplying Inheritance

Subclasses are specializations of parent class.

For inheritance to work, two things must always be true.

1. the objects must truy have a genelization-specialization relationship.
2. must use the correct coding techniques.

### Using the template method pattern

### Implementing every template method

Any class that uses the template method pattern must supply an implementation
for every message it sends.

Creating code fails with reasonable error messages takes minor effort in the present
but provides value forever.

## Managing Coupling Between Superclasses and Subclasses

### Understanding Coupling

### Decoupling Subclasses Using Hook Messages

## Summary

Abstract superclasses use the template method pattern to invite inheritors to supply specialization,
and use hook methods to allow these inheritors to contribute these specializations
without being forced to send super.
