# alex cana, cs 330

# Pet class in Python translated into Julia
# using struct
struct Pet
    name
    age
    weight
    
    function Pet()            # no parameters (multiple dispatch)
      new("None", 0, 0)
    end
    
    function Pet(n, a)        # only two parameters (multiple dispatch)
      new(n, a, 0)
    end
    
    function Pet(n, a, w)     # all parameters (multiple dispatch)
      new(n, a, w)
    end
end

struct Dog
    dog::Pet
    breed
end

struct Cat
    cat::Pet
    breed
end

function getBreed(dog)
    return ("Breed type: " * dog.breed)
end

function getBreed(cat)
    return ("Breed type: " * cat.breed)
end

p1 = Pet("Scooby", 8, 75)
p2 = Pet("Thomas", 10)
p3 = Dog(Pet("Benedict", 5), "Rhodesian Ridgeback")
p4 = Cat(Pet("Willbur", 9), "Ragdoll")

println(p1.name)
println(p1.age)
println(p1.weight)
println(p1)
println()

println(p2.name)
println(p2.age)
println(p2.weight)
println(p2)
println()


# println(p3.name)          not quite sure how to get parent variable to print
# println(p3.age)
# println(p3.weight)
println(p3)
println()

# println(p4.name)
# println(p4.age)
# println(p4.weight)
println(p4)
println()

println(getBreed(p3))
println(getBreed(p4))