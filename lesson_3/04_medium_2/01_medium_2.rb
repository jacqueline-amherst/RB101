# Question 1:
# Every object in Ruby has access to a method called `object_id` which returns a numerical value that uniquely identifiess the object.
# This method can be used to determine whether two variables are pointing to the same object.
# Take a look at the following code and predict the output:

a = "forty two"
b = "forty two"
c = a

puts a.object_id # 1
puts b.object_id # 2
puts c.object_id # 1

# Answer:
#   `a` and `c` will have the same object id, `b` will have its own.
#   By assigning `b` to "forty two" instead of `a` it will point to a unique object even though it looks identical to `a`
