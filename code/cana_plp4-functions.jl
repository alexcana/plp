# alex cana, cs 330

# simple way of defining a function
function multiply(x, y)
    return x * y
end
println(multiply(5, 2))

print("\n")

# compact function definition
addition(x, y) = return x + y
println(addition(1, 2))

print("\n")

# functions can be passed around like any value
# e.g.: calling the function without expressions
add = addition
println(add(1, 2))

print("\n")

# recursive function (function that calls on itself)
x = rand(1:10)
function factorial(num)
    if num == 1
        return 1
    else
        return num * factorial(num-1)
    end
end
println(x, "'s factorial is: ", factorial(x))

print("\n")

# function to split a string into two
# julia has a built in split() method which splits the string from the start
words = "Hello there World!"
function splitting(sentence)
    return split(sentence, limit = 2)
end
println(splitting(words))

# rsplit() splits the string starting from the end
function reverseSplit(sentence)
    return rsplit(sentence, limit = 2)
end
println(reverseSplit(words)) 

# pass by value or reference
