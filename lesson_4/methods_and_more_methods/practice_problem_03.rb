# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# Returns the original array because `puts num` returns nil for each element.