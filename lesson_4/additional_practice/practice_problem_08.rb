# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Answer: 
# 1 and 3 will be printed, [3, 4] will be returned.
# each iterates by index number. 
# Since shift actively changes the indices of the elements, puts will only print every other element, and the first two elements will be deleted.


# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#answer: 
# 1 and 2 will be printed, [1, 2] will be returned.
# since pop deletes the last element, both 3 and 4 will be missing by the time there is a chance to iterate over them.
# pop is destructive, so self changes and the mutations are reflected in the return value.
