# Programming Language Project
for CS 330: Structure and Organization of Programming Language


## Loops 
Julia supports while and for loops like most languages do and is syntaxed in the same manner with the conditionals placed within the parentheses of the loop.

```
while (x)
  do something
end
```
```
for (x in/=/∈ [range])
  do something
end
```

Julia does not have a definite do-while loop—the documentation emphasizes constructing a do-while loop within a for-loop or a regular while-loop by conditional formatting.

*from: http://web.mit.edu/julia_v0.6.2/julia/share/doc/julia/html/en/manual/control-flow.html#man-loops-1*

## Variable Scope
Two variables that are important to note are `global` and `local` variables (see [coded example)](https://github.com/alexcana/plp/blob/main/cana_plp4-loops.jl). A **global** variable can be accessed from outside of its scope. This means that if a global variable is initialized within a loop, it can be accessed after the loop. A **local** variable can only be accessed within its scope. This means that if a local variable is initialized within a loop, it cannot be accessed after the loop. 

## Functions
Julia also supports functions and they can be defined in numerous ways.
The first one is a definition that is common in most languages where `function` is used to mark the function and its parameters are placed within the parentheses (if any). `end` is used to close the function and is similar to the `}` closing brackets in some languages. It is important to note that multiple parametered functions are permitted.

```
function x()
  do something
end
```
The second one is known as a compact assignment form for a function but is completely equivalent to the tradition definition seen above. This form does have limitations as the body can *only* be a single expression.
```
x() = do something
````
A function can also be passed around like a value. It can be called as a function object when omitting the parenthesis.
```
y = x
y()
```
The code above is creating a new function using compact assignment form and calling the function x. Since the parenthesis is ommited after x, x is recognized as a function object.

*from: https://docs.julialang.org/en/v1/manual/functions/*

## Continue
There is a `continue` statement in Julia that allows you to skip an iteration in a loop. 

```julia
i = 0
while i <= 10
    global i += 1
    if i == 5 || i == 10
        continue
    else
        print(i, " ")
    end
end
```
would return `1 2 3 4 6 7 8 9` but **not** 5 or 10.


## Recursive Functions

Recursive functions (functions that call on themselves when run) are also permitted in Julia but is generally not used due to its likeliness of becoming convulated. The most popular example is a factorial function:

```julia
x = rand(1:10)
function factorial(num)
    if num == 1
        return 1
    else
        return num * factorial(num-1)
    end
end
println(x, "'s factorial is: ", factorial(x))
```

## Pass-by Reference or Pass-by-Value?
There is ongoing discussion about whether Julia is a pass-by-value or pass-by reference language due to its ambiguity. Official documentation does state that Julia is a pass-by-reference language or uses a "pass-by-sharing" convention which means values are not copied when passed to function. Rather, function arguments bind new variables to old ones (which just means a new location for the old value to be referred to) but it is the exact value. 

*from: http://web.mit.edu/julia_v0.6.2/julia/share/doc/julia/html/en/manual/noteworthy-differences.html*

*from: https://docs.julialang.org/en/v1/manual/functions/*

*from: https://stackoverflow.com/questions/38936868/in-julia-functions-passed-by-reference-or-value*
