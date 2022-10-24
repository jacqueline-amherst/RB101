# In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. 
# Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

def xor?(condition1, condition2)
  return true if condition1 && !condition2
  return true if condition2 && !condition1
  false
end


puts xor?(5.even?, 4.even?) #== true
puts xor?(5.odd?, 4.odd?) #== true
puts xor?(5.odd?, 4.even?) #== false # both true
puts xor?(5.even?, 4.odd?) #== false # both false

# I have taken the given solution. I spent a lot of time trying to figure out a succint way of writing this and kept running into roadblocks.