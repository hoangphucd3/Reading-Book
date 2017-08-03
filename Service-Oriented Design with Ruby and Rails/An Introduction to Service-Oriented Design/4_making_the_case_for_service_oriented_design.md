## Making the Case for Service-Oriented Design

### Isolation

Service-oriented design can appear daunting and complex. It requires more thought
up front and decisions about how to separate logic and data in an application.

Up-front design and services give developers
the ability to build apps that support greater complexity and larger team sizes.
Service-oriented systems sacrifice iteration speed for stability, reuse, and robustness. 
There are multiple levels of isolation, including business logic, shared system, and full isolation.

#### Business Logic Isolation

Services that isolate based on business logic generally have their own application code,
with a shared data store and shared systems.

To achieve true business logic isolation, the two services should have separate code bases.
Further, they should not communicate with each other through the database.

#### Shared System Isolation

Shared system isolation refers to separate services running inside their own application
instances. Each would have its own databases, but they would be runnning on the same hardware.

Each of the servies communicates with its own database and the external interface of other service.

The disadvantage with shared system isolation is that shared system resources can be tricky to manage.
Further, shared system isolation adds complexity with upgrading libraries or running other system-level
application.

#### Full isolation

Ideally, services should run in full isolation. With full isolation, they have their own server or
virtual private server instances, completely seperate code bases and repositories, and their own
data stores.

#### Testing in isolation

### Robustness


