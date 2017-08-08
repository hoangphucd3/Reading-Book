Rails supplies a lot of innate functionality, but at the cost of speed and extra code
and complexity that isn't necessary in smaller services.

## The Vote Services

The vote service should provide a way to let users give a "thumb up" or "thumb down" to
a feed entry. The service should provide the specific features:

- Vote an entry “up” or “down”
- Get the entry IDs voted on by a user
- Get the vote totals for an entry
- Get the vote totals for a list of entries
- Get the vote for an entry and user
- Get the vote information for a list of entries for a user
- Get the vote totals for a user

There is only a single call that writes data to the service: when a user votes on an entry.
The rest of the API calls are for returning data based on those votes. With so many different
read-based calls, this service should be optimized for those reads. The single write should be 
routed through a messaging system.

### A Multi-Get interface

Multi-get refers to the ability to retrieve information for multiple IDs at once.
The API should be able to return the vote values for a single entry and for single entry
and user. Limiting the total number of endpoints in an API will make it easier to 
program against, test and modify.

Responses for an API should follow a predictable convention. The option to return a JSON
hash with the ID as a key and the response as a value is a little verbose but it's more
explicit and easier to handle in the client code.

### The Vote Interface

The only requirement is that the back-end server logic enforce "one vote per entry per user"
rule. The data that must be conveyed is the entry ID, the user ID, and the vote value (up or down).

```
Code goes here
```

The option hightlight the three decisions that must be made when designing the vote interface:

- How should the vote value be represented?
- What data should be specified in the URL or the request body?
- Which HTTP method should be used?

### API Design Guidelines

The following guidelines help determine which API makes the most sense:

- URIs should be descriptive
- When possible, API endpoints should be exposed as resources
- Data should be descriptive
