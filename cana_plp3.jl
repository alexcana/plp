# alex cana, cs 330

x = 1
y = 2
z = 3

if z > y 
    println("$z is greater than $y.")
    if z > x
        println("$z is greater than $y and $x.")
    else
        println("but $z is less than $y.")
    end
else
    println("$z is not greater than $y and $x.")
end

# or can be done through a multiconditional if-else
if z > y & z > x
    println("$z is greater than $y and $x.")
else
    println("$z is not greater than $y and $x.")
end

# prints false because shorts circuits since y!<x
if y < x && z > y
    println(true)
else
    println(false)
end

# prints true even if 2nd condition is false
# because 1st condition has been met
if z < x || z > y
    println(true)
else
    println(false)
end

# Julia does not currently implement switch statements

# begin and ; blocks

z = begin
    x = 1
    y = 2
    x + y
end
println(z)

z = (x = 1; y = 2; x + y)
println(z)

