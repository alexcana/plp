# alex cana, cs 330

# for loop
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for num in nums
    print(num, " ")
end

println("\n")

# foreach() method
# like a for each loop
foreach(num -> print(num, " "), nums)

println("\n")

# nested for loop
string = "Hello there\nwonderful world!"
for word in string
    for letter in word
        print(word, "")
    end
end

println("\n")

# a global variable is able to be accessed from outside its scope
# e.g.: if it is initializes within a loop, you will be able to call it outside the loop

# a local variable is not able to be accesses from outside its scope
# if you call it outside its scope, you will receive an "x not defined" error
# https://www.geeksforgeeks.org/julia-local-keyword-creating-a-local-variable-in-julia/?ref=rp

# while loop
# no do-while in julia but can be written in a while loop
x = 1
while x <= 10
    print(x, " ")
    global x += 1
    # using global x because x was initialized outside the loop
end

# continue statement allows you to skip an iteration in a loop
# e.g.: print out 1, 2, 3, 4, 6, 7, 8, 9, but not 5 or 10

println("\n")

i = 0
while i <= 10
    global i += 1
    if i == 5 || i == 10
        continue
    else
        print(i, " ")
    end
end