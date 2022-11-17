# What is the block's return value in the following code? 
# How is it determined?
# Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The block's return value is a boolean for each element passed to it.
# any?'s return value is `true` because there is an element which causes the block to return true.
