## Deciding what belongs in a class

Yoy know how to write code but not where to put it.

### Grouping methods into class

## Creating classes that have a single responsibility

## Example application: Bicycles and Gears

Gear has chainring, cogs and rations and deserves to be a class.

## Determining if a class has a single responsibility

When a class do its centreal purpose, the class is said to be high cohension.

## Determining when to make a design decisions

Unfortunely, you do not know what features would arrive in the feature.

When the future cost of doing nothing is the same as the current post, postpone
the decision.

## Writing code that embraces change

### Depend on behavior, not data

### Hide instance variables

Always wrap instance variables in accessor methods.

IF @cog instance var is referred many times and suddenly need to adjusted,
the code will need many changes.

But if it is wraped in a method, you can change what cog mean.

Now there are two problems with this approach.

The first on is visibility, any other object can send a `cog` to a `Gear`
The second issue is more abstract.

### Hide data structures

Direct references into complicated structures are confusing, they obscure what the data really is.

You can use the Ruby `Struct` to wrap a structure.

If you can control the input, pass in useful object, but if you are compelled to take a messy structure,
hide the mess even from yourself.

## Enforce single responsibility everywhere

### Extract Extra Responsibilities from Methods
Methods should have a single responsibility like classes. The reason is makes them easy to change and easy to resuse.

```ruby
# Old
def gear_inches
  ratio * (rim + (tire * 2))
end

# New
def gear_inches
  ratio * diameter
end

def diameter
  rim + (tire * 2)
end
```

Do these refactoring even when you don't know the ultimate desgin not because it's clear, but because it isn't.

Impact of a single refactoring is small, but cumulative effect is huge. It confers the following benfits:
- Expose previously hidden qualities
- Avoid the need for comments
- Encourage reuse
- Are easy to move to another class

If you have a muddled class with too many responsibilities, separate those responsibilities into different classes.
Concentrate on primary class. If you identify the extra responsibilities that you can not yet remove, isolate them.
