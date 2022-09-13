# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

def stringy(integer)
  binary = ''

  integer.times do |num|
    if num.even?
      binary << '1'
    else
      binary << '0'
    end
  end

  binary
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# I don't know why but I'm really proud of having come up with a solution to this problem! 
# I realize now I could simplify with a ternary operator, but I will leave my original solution.