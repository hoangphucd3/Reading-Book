Unit testing is one of the most important components in legacy code work.
System-level regression tests are great, but small, localized tests are 
invaluable. They can give you feedback as you develop and allow you to refactor
with much more safety.

# What is Unit Test?
Unit tests run fast.
A test is not a unit test if:
1. It talks to a database
2. I commnunicates across a network.
3. It touches the file system.
4. You have to do special things to your environment to run it.

# Test Coverings
Dependency problems: When classes depend directly on things
that are hard to use in a test, they are hard to modify and hard to work with.

The Legacy Code Dilemma
When we change code, we should have tests in place. To put tests in place, we often have to change code.

# The Legacy Code Change Algorithm

An algorithm you can use:
1. Identify change points
2. Find test points
3. Break dependencies
4. Write tests
5. Make changes and refactor.
