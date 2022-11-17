# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# I believe this will return the original array because 'hi' will have a truthy return value.
