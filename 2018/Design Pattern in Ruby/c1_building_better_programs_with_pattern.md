## Patterns for Patterns

- Separate out the things that change from those that stay the same.
- Program to an interface, not an implementation.
- Prefer composition over inheritance.
- Delegate, delegate, delegate.

### Separate Out the Things That Change from Those That Stay the Same

### Program to an Interface, Not an Implementation

If our classes are to do anything significant, they need to know about each other.

Example in Page 6

By writing code that uses the most general type possible - we reduce the
total amount of coupling in our code.

Programming to an interface is not the only step that we can take to
make our code more change resistant. There is also composition.

### Prefer Composition over Inheritance

We can assemble the behaviors we need through composition.

Example in Page 8 -> 12

### Delegate, Delegate, Delegate

### You Ain’t Gonna Need It

## Fourteen Out of Twenty-Three

- Every pattern has a problem that it is trying to solve. For example, perhaps your
code always wants to do exactly the same thing, except at step 44. Sometimes step
44 wants to do this, and sometimes it wants to do that. Perhaps you need a
*Template Method*.

- Maybe it is not step 44 that wants to vary but the whole algorithm. You have a
well-defined job, something that needs to get done, but there are a lot of ways to
do it. You might need to remove the outer covering from a feline creature, and
there is more than one technique you might employ. You might want to wrap
those techniques—those algorithms—in a *Strategy object*.

- What if you have a class A, which needs to know what is happening over there in
class B? But you don’t want to couple the two classes together because you never
know when class C (or even class D!) might come along. You might want to consider
using the *Observer* pattern.

- Sometimes you need to treat a collection of objects just like a single object—I can
delete or copy or move an individual file, but I can also delete or copy or move a
whole directory of files. If you need to build a collection of objects that looks just
like one of the individual objects, you probably need the *Composite* pattern.

- Now suppose you are writing some code that hides a collection of objects, but you
don’t want the collection hidden too well: You would like your client to be able to
access the objects in your collection in sequence without knowing how or where
you have stored those objects. You definitely need the *Iterator* pattern.
