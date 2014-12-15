# Boris Bikes Take 2 - London Style TDD

Week 1 at Makers Academy project

# To Use

Clone the repository:

```
git clone git@github.com:deniseyu/boris-bikes-2.git
cd boris-bikes-2
```

To test, run 'rspec' from the command line while in the project directory.

# Learning Objectives

### London-Style Testing
In this iteration, we used RSpec doubles to stub objects and methods that were outside the scope of the unit being tested.

### Object-Oriented Design
We started this project by creating Class Responsibility Cards (CRCs) to identify the objects that needed to be created and which responsibilities each object would have.

### Test-Driven Development
In this iteration of Boris Bikes, we used Chicago-style testing throughout the test suite, written in RSpec.

### Composition & Inheritance
We employed modular composition principles when refactoring the BikeContainer methods into a module that is mixed into Docking Station, Garage, and Van. In this project, the design of the system did not call for inheritance.