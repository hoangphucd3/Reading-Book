Life doesn't stand still.

Coupling - the dependencies among modules of code.
A good way to stay flexible is to write less code. 

## Decoupling and the Law of Demeter
Writing “shy” code is beneficial.  But “shy” works two ways: don’t reveal yourself to others, and don’t interact with too many people.

Organize your code into modules and limit the interaction between them. If one module then gets compromised and has to be replaced, the other modules should be able to carry on.

### Minimize Coupling
### The Law of Demeter for Functions

```
Minimize Coupling Between Modules 
```

As with any technique, you must balance the pros and cons for your particular application. In database schema design it is common practice to "denormalize"
 the schema for a performance improvement: to violate the rules of normalization in exchange for speed.

In fact, by reversing the Law of Demeter and tightly coupling several modules, you may realize and important performance gain. As long as it is well known and acceptable for those modules to be coupled, your design is fine.

## Metaprogramming
### Dynamic Configuration 
Use metadata to describe configuration options for an application: tuning parameters, user preferences, the installation directory, and so on.

Metadata is data about data. For example, a schema contains data that describes fields (columns) in terms of names, storage lengths, and other attributes. You should be able to access and manipulate this information just as you would any other in the database.

#### Metadata-Driven Applications
Our goal is to think declaratively (specifying what is to be done, not how) and create highly dynamic and adaptable programs. 
We do this by adopting a general rule: program for the general case, and put the specifics somewhere else—outside the compiled code base.
```
Put Abstractions in Code, Details in Metadata
```

### Business Logic
