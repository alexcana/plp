# Programming Language Project
for CS 330: Structure and Organization of Programming Language


## Naming Conventions
Like most languages, there are not set rules for how to name variables or functions. There are, however, a certain set of adopted rules that have been used by many languages like Python and Java when it comes to naming conventions. These are not enformed by the interpreter but will help with syntax errors when the code is being compiled.
1. Names of variables and functions are in lower case with names of Types being uppercase.
2. Word separation can be indicated by Snake case or Camel case. The use of underscores is not recommended unless needed.
4. Camel case is also recommented when naming Types and Modules.
5. Leave whitespace when using the assigment operator "=" for better clarity and readability.

*from: https://levelup.gitconnected.com/variables-and-types-in-julia-750b057c4537*

## Julia as a Language

> Is Julia statically or dynamically typed? Is Julia a weakly or strongly typed language?

Julia is a dynamically typed language, specifically "dynamic, nominative and parametric." This means that specifying types is not necessarily required-the language automatically infers a type regardless of if it was declared or not. Using static type systems is useful in some cases such that the programmer wants to indicate a specific type to a certain value. While it may be more efficient because the compiler does not have to think about what the data type might me, it does not enhance the performance drastically. However, it greatly benefits those that write the code because they do not have to go through the tedious process of declaring every datatype. This also means that Julia checks for variable types during runtime and not throughout.

Julia is a strongly typed language. It does not automatically convert a variable of one type to another because there are restriction between conversions of different types.

*from: http://web.mit.edu/julia_v0.6.2/julia/share/doc/julia/html/en/manual/types.html#:~:text=Julia's%20type%20system%20is%20dynamic,values%20are%20of%20specific%20types.*

> Put x = "5" + 6 into the compiler. If it doesn't compile, why? Is there somethng you can do to make it compile?

` x = "5" + 6 ` will not run like in most languages. Some parsing needs to occur in order for the code to run. 

` x = parse(Int64, "5") + 6 ` will run because "5" has been analyzed and broken down by the language into an easily processed component (through parse), which is the integer 5 in this case. It is then added to 6.

*from: https://docs.julialang.org/en/v1/base/numbers/*
