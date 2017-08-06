## Handling Joins

First, the API design must account for how to store references to joined data. 
Second, the API design determines when and where joins should occur. 
Third, the overall design should not create the need for too many nested joins.

### Storing References

In an ideal REST system, the client libraries do not have to construct URIs for
resources.  If a client sends a request for a comment, the client should also be able to
request the user the comment belongs to without having knowledge of how to construct
a user URI. One solution is to contain this logic within the comment service.

...

### Joining at the Highest Level

The highest level for a join is the place in the service call stack where joins should occur.

...

### Beware of Call depth

Call depth refers to the number of nested joins that must be performed to service a request.

For example, the request to bring back the reading list of a user would have
to call out to the user, subscription, feed storage, and ratings services. The call chain
takes the following steps:

1. It makes simultaneous requests to the user and subscription services.
2. It uses the results of the subscription service to make simultaneous requests to the
feed storage and ratings services.

This example has a call depth of two. There are calls that have to wait for a
response from the subscription service before they can start. This means that if the
subscription service takes 50 milliseconds to respond and the entry and ratings services
complete their calls in 50 milliseconds, a total time of 100 milliseconds is needed
to pull together all the data needed to service the request.

As the call depth increases, the services involved must respond faster in order to
keep the total request time within a reasonable limit.

 If there is a request with a call depth of seven, the design should be
restructured so that the data is stored in closer proximity.
