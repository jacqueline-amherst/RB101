# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# Return value : {a: 'ant', b: 'bear', c: 'cat'}
# each_with_object returns the object given as an argument. In this case it is a hash, and the block is responsible for determining the contents.
