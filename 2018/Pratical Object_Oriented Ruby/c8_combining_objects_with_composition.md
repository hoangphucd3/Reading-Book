Composition is the act of combining distince parts into a complex whole such that the whole becomes more
than the sum of its parts.

## Manufacturing Parts

### Creating the PartsFactory

The word `factory` is an object that creates other objects.

### Leveraging the PartsFactory

`Struct` takes position order initlization arguments
`OpenStruct` takes a hash for its initlization and devires attributes from the hash.

Deciding between inheritance and composition

Composition contains far fewer built-in dependencies than inheritance;
it is very often the best choice.

Inheritance is a better solution when its use provides high rewards for low risk.

## Accepting the Consequences of Inheritance

### Benefits of Inheritance

hierarchies are open for extension while remaining closed for modification.

Hierarchies are therefore exemplary; by
their nature they provide guidance for writing the code to extend them.

### Costs of Inheritance

1. Choosing wrong inheritance you'll be forced to duplicate or restructure code.
2. Even when inheritance makes sense, you might be writing code that will be used by other programmers that you did not expect.

Avoid writing frameworks that require users of your code to subclass your objects
in order to gain your behavior

## Accepting the Consequences of Composition

### Benefits of Composition

composition results in applications built of simple, pluggable objects
that are easy to extend and have a high tolerance for change.

### Costs of Composition

## Choosing Relationship

### Use Inheritance for is-a Relationships

### Use Duck Types for behaves-like-a Relationships

### Use Composition for has-a Relationships
