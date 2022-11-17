# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => ['bear']
# map is an enumerable method that always returns an array.
# the conditional acts as selection criteria.

# I didn't expect `nil` to be returned for the first value! I was a little stumped on whether or not there would be a return value on the first element.
