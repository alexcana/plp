# alex cana, cs 330
 
a = "Alex"
b = 19
c = 19.0
d = true
println(a)
println(b)
println(c)
println(d)

# can create multidimensional arrays
# able to put different datatypes into a list/array
e = []
e = [1, 2, 3, 4] 
f = [1, 9, "Alex's age"]   
println(e)
println(f)

# untyped dictionary, can specify a type for a dictionary
# e.g.: Dict{String, Integer}(Key, value)
g = Dict()
g = Dict("Name:" => "Alex", "Age:" => 19)
println(g)

# doing arithmetic operation with an int and float will result in a float64 (widening conversion)
h = 19 + 19.0
i = 19 / 19.0
println(typeof(h),  " ", typeof(i))

# able to perform conversions between two data types
j = 19
jF = convert(AbstractFloat, j)
println(j, " ", typeof(j))
println(jF, " ", typeof(jF))

# k = "5" + 6
# results in an error

k = parse(Int64, "5") + 6
println(k)
