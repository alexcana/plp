# Programming Language Project
for CS 330: Structure and Organization of Programming Language


## Control Statements
> What are the boolean values in your language?

There is `true` == `1` and `false` == `0`.

> What types of conditional statements are available in your language? (if/else, if/then/else, if/elseif/else). Does your language allow for statements other than “if”?

Julia allows for the usual conditional statements: `if/else`, `if/then if/else`, `if/elseif/else`, `while`, `while/if`, `for`, and `for/if`.

It also has something called `begin` blocks and `;` chains. It is not quite the same as an `if/else` statement, rather it works more like a sequence of code that runs. 

*from: https://docs.julialang.org/en/v1/manual/control-flow/*

> Does your language use short-circuit evaluation? Include an example of the short-circuit logic working or not working.

Julia does support short-circuit evaluation. It works like other languages in which the boolean operators `&&` and `||` (and & or respectively) does not necessarily evaluate the second condition if the first is true. For example,

`x = 1, y = 2, z = 3`

`if y < x && z > y`
    
    `println(true)`

`else`

    `println(false)`
    
`end`

This program outputs `false` because even though `z = 3` which means the condition `z > y` == `true`, the first condition `y < x` is `false`. If the second condition came first, it would then evaluation the second condition. But because the first condition returns `true`, a short circuit occurs. The same principle applies for the `||` operator.

*from: https://docs.julialang.org/en/v1/manual/control-flow/*

> How does your programming language deal with the “dangling else” problem?

Julia incorporates the usage of `end` for `if` statements which acts like `break` in Python. After the `if` statement and the code indented within it runs, it ends which means that each `if` statement has a definite end. "Dangling else" problems occur when there are multiple `if` statements and lesser `else` statements—most languages will either give you an error after compiling or tell you that the syntax is wrong as you are writing the code. Having `end` ensures that each nested `if` statement is closed and completed before moving onto the rest of the code.

### Switch-case Statements

Unfortunately, Julia has not implemented switch-case statements. Julia's base is designed to be more simple, meaning that you can achieve X through Y. You can achieve a switch-case statement through the use of nested `if/else' statements. 

(not much discussion on this)

*from: https://github.com/JuliaLang/julia/issues/18285*
