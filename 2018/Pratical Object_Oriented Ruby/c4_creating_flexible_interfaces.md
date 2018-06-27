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

