# Chapter 2 A Pragamatic Approach

## Reversibility
There are no final decisions

## Flexible architecture
You also need to think about maintaining flexibility in the areas of architecture, deployment, and vendor integration.

## Tracer Bullets
### Code That Glows in the Dark
Tracer code is not disposable: you write it for keeps. It contains all the error checking, structuring, documentation, and self-checking that any piece of production code has. It simply is not fully functional.

The tracer code approach has many advantages:
- Users get to see something working early
- Developers build a structure to work in
- You have an integration platform
- You have something to demonstrate
- You have a better feel for progress

### Tracer Bullets Don’t Always Hit Their Target 
Tracer bullets show what you’re hitting. This may not always be the target. You then adjust your aim until they’re on target. That’s the point. 

## Domain Languages
## Estimating
One of the interesting things about estimating is that the units you use make a difference in the interpretation of the result.

We recommend that you sacle time estimates as follow:

| Duration   | Quote estimate in                    |
|------------|--------------------------------------|
| 1–15 days  | days                                 |
| 3–8 weeks  | weeks                                |
| 8–30 weeks | months                               |
| 30+ weeks  | think hard before giving an estimate |

### Where Do Estimates Come From?
All estimates are based on models of the problem. We have to mention
a basic estimating trick that always gives good answers: ask someone
who’s already done it

### Understand What’s Being Asked
You need to have a grasp of the scope of the domain.  Often, the scope you choose will form
part of the answer you give: “Assuming there are no traffic accidents
and there’s gas in the car, I should be there in 20 minutes.”

### Build a model of the system
Often, the process of building the model leads to discoveries of underlying
patterns and processes that weren’t apparent on the surface.

### Break the Model into Components
Once you have a model, you can decompose it into components. You’ll need to discover the mathematical rules that describe how these components interact.


### Give Each Parameter a Value 
Assign each parameter a value. The trick is to work out which parameters have the most impact on the result, and concentrate on getting them about right.

#### Calculate the Answer
Only in the simplest of cases will an estimate have a single answer. Run multiple calculations, varying the values of the critical parameters, until you work out which ones really drive the model. A spreadsheet can be a big help. Then couch your answer in terms of these parameters.

### Keep Track of Your Estimating Prowess 
When an estimate turns out wrong, don’t just shrug and walk away. 
Maybe you chose some parameters that didn’t match the reality of the problem. Maybe your model was wrong. 
Whatever the reason, take some time to uncover what happened

### Estimating Project Schedules
Repeating the following steps:
- Check requirements
- Analyze risk
- Design, implement, integrate
