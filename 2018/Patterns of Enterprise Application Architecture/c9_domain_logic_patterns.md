## Transaction Script

Organize it in two ways:
1. Having several Transaction Scripts in a single class, where each class defines a subject area related to Transaction Scripts
2. Having each Transaction Scripts in its own class, using Command Pattern.

## Domain Model

A rich Domain Model is better for more complex logic, but is harder to map to database
A simple can use Active Record, whereas a rich requires Data Mapper.

Common concern is bloated domain objects.

For example an Order class

If some responsibility is general, it should sit in the order class,

If specfific, in which case it should sit in some usage-specific class, which might be a Transaction Scipt or presentation
