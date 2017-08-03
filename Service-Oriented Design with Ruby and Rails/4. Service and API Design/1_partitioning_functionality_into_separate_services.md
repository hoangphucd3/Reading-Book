## Partitioning Functionality into Separate Services

The first step when considering the design of services is to look at the application 
as the whole and to make some decisions about how to split up the functionality.

### Partitioning on Iteration Speed

The services approach works best when you're dealing with well-defined requirements and
an API that will remain fairly stable. When developing an application where you're not 
sure about the stability of the list of features and needs, it might be best to develop
a hybrid system.

The key to this type of partitioning is to identify the parts of the appliation that are
core and unlikely to change. You should avoid the temptation to just stuff everything back
into a single monolithic application.
