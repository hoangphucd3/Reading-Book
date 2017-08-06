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

### Partitioning on Logical Function

Generally, you want to paritition services based on their logical function. This means you have
to consider each piece of functionality in an application and determine which parts fit locally
together.

In the social feed reader, on service decision stands out as being driven by logical function:
updating feeds. Its only purpose is to download XML files, parse them, and inserts the new entries
into the data store.

It makes sense to pull the feed udpater into its own service so that it can remain isolated.
The feed updater service highlights the advantages of isolated testability.

The feed and feed entry storage service is also separated logically. Users can subscribe
to feeds, but they don’t own them. All users of the system share feed and entry
data, so this data can be seen as logically separate from users.

The higher-level parts of an application, such as views and controllers, can also be
partitioned based on logical function. For example, a comment thread or discussion
could exist across many pages of a site. Instead of using a partial in the application to
render HTML, a call could be made to a comment service that renders the full HTML
snippet for the comments section of the page.

### Partitioning on Read/Write Frequencies

Different data stores are optimized for different behavior. Ideally, a service will have to work
only with a single data store to manage all its data.

For data with a high read frequency, the service should optimize a caching strategy.
For high-write-frequency data, the service may not want to bother with caching.
Instead of having to optimize both reads and writes in a single place, you
can simply make one service handle the read case really well while the other service
handles the write case.

The social feed reader involves data that crosses all ends of the spectrum: high
read and low write, high write and low read, and high read and high write. For
instance, user metadata would probably not be updated very frequently.

It could be argued that the reading list belongs in the same service as the user data.
It is data owned by the user. However, the reading list has a high write frequency, 
while the other user data probably
has different characteristics. Thus, it makes sense to split the reading list out into
a separate service that can be run on its own.
