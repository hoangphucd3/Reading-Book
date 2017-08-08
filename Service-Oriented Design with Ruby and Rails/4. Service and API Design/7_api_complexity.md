## API Complexity

Service APIs can be designed to be as specific or as general as needed. As an API gets
more specific, it generally needs to include more entry points and calls, raising the
overall complexity.

In the beginning, it’s a good idea to design for the general case. As
users of a service request more specific functionality, the service can be built up. APIs
that take into account the most general cases with calls that contain the simplest business
logic are said to be atomic.

### Atomic APIs

The initial version of an API should be atomic. It should only expose only basic functions that
can be used to compose more advanced functionality. The Atomic version of the API would return only
a single type of model in each GET request and force the user to make additional requests for other
related models.

Atomicity is about returning only the data that a client needs and not stuffing the response with
other objects.

### Multi-Gets

You provide a list of IDs and get a response with those objects.

```
Code goes here
```

For service clients, the advantage of using this approach is that the clients are able to get all
the entries with a single request.
There are potential disadvantages:
- How do you deal with error conditionns? What if one of the requested IDs was not present in the system?
- It may complicate caching logic for the service.

### Multiple Models

A multiple-model API call is a single call that returns the data for multiple models in the response.
Multiple-model APIs are very similar to multi-gets in that they reduce the number of requests that a 
client need to make to get the data.
Multiple-model APIs are usually best left for the later-stage development.
