## AntiPattern: A Lost Child Controller

RESTful resources generally parallel the models they represent.

```
Code goes here
```

Passing the parent ID around like a hot potato is
a definite code smell.

### Solution: Make Use of Nested Resources

Rails provides an answer to the problem of having to explicitly pass around parent IDs
in the form of nested resources.

```
Code goes here
```

### Nested and Un-nested

Allowing a controller to be accessed as a nested and an un-nested resource can be complicated.

### Cleanup
