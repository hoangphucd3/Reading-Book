```
If it stinks, change it
```

## Duplicated Code

- `Extract Method`: The same expression in two methods of the same class
- `Pull Up Field`: The same expression in two sibling subclasses
- `Form Template Method`: The code is similar but not the same
- `Substitute Algorithm`: Do the same thing with different algorithm
- `Extract Class`: Duplicated code in two unrelated class

## Long Method

The object programs live best with short methods.
The longer the procedure is, the more difficult it is to understand.

All you need to do to shorten method is `Extract Method` ninety-nine percent of the time.

- `Replace Temp with Query`: Method has many temporary varibales.
- `Introduce Parameter Object` and `Preserve Whole Object`: Method has long list of parameters. 
- `Decompose Conditional`: deal with conditional expressions.

## Large Class

- `Extract Interface`: Break up the class.
- ` Duplicate Observed Data`: Class is a GUI class, need to move data and behaviour to a seperate domain object.
