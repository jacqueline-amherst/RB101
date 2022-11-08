# Question 2:
# Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Answer:
#   These will all have the same object id. Unlike strings, integers are immutable objects.