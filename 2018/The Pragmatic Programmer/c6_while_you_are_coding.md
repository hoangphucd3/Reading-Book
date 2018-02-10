# Chapter 6: While you are coding

## Refactoring

### When should you refactor?

Any number of things may cause code to qualify for refactoring:

- Duplication
- Nonorthogonal design
- Outdated knowledge
- Performance

```
Refactor Early, Refactor Often
```

Keep track of the things that need to be refactored. If you can’t refactor
something immediately, make sure that it gets placed on the schedule.
Make sure that users of the affected code know that it is scheduled to
be refactored and how this might affect them.

### How Do You Refactor?

1. Don’t try to refactor and add functionality at the same time
2. Make sure you have good tests before you begin refactoring. Run
the tests as often as possible. That way you will know quickly if
your changes have broken anything.
3. Take short, deliberate steps: move a field from one class to another,
fuse two similar methods into a superclass. Refactoring often involves
making many localized changes that result in a larger-scale
change. If you keep your steps small, and test after each step, you
will avoid prolonged debugging.

## Code That’s Easy to Test

### Unit Testing

A software unit test is code that exercises a module.

### Testing Against Contract

```
Design to Test
```

By building the tests before you implement the code, you
get to try out the interface before you commit to it.

### Using Test Harnesses

A test harness can handle common operations such as logging status,
analyzing output for expected results, and selecting and running the
tests

Regardless of the technology you decide to use, test harnesses should
include the following capabilities:

- A standard way to specify setup and cleanup
- A method for selecting individual tests or all available tests
- A means of analyzing output for expected (or unexpected) results
- A standardized form of failure reporting

## Build a Test Window

## A Culture of Testing

All software you write will be tested—if not by you and your team,
then by the eventual users—so you might as well plan on testing it
thoroughly.

```
Test Your Software, or Your Users Will
```

## Evil Wizard

```
Don’t Use Wizard Code You Don’t Understand
```
