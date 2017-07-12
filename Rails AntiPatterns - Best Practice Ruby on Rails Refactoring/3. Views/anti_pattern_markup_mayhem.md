## AntiPattern: Markup Mayhem

Semantic markup is a fancy term for separating content and presentation in your HTML. From a practical point of view, 
this means three things:

* Every element in the page that wraps specific content should have a class or id
  attribute applied to it that identifies that content.
* The right tags should be used for the right content.
* Styling should be done at the CSS level and never on the element directly.

The holy grail of web design is a site that can be completely restyled without modifying
any HTML content; only CSS changes would be allowed.

### Solution: Make use of the Rails Helpers

### Solution: Use Hamml