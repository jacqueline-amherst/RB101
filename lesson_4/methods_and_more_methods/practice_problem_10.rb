# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil]
# `puts num` has a return value of nil so each element for which that conditional is true will have a return value of nil as well.
