## Converting to Services

### Segmenting into Services

There are many different ways to break up the social feed reader applicatin into services.
Some choices are straightforward, while others require a little more thought. Answer the
following questions helps determine hwo to redesign for service:

- Which data has high read and low write frequency?
- Which data has high write or update frequency?
- Which join occurs most frequently?
- Which part of the application have clearly defined requirements and design?

Answering the first three questions will help determine where models might belong in differnt
services. The last question helps determine whether a portion of the application should remain 
in a typical Rails environment instead of being split out into services.

### Breaking Up the Applicaton into Services

Finding the right places to split the Rails model-view-controller (MVC) design pattern can be tricky.

Some or all models could be converted to services.

### Conclusion
