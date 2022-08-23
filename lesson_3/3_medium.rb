# q1
10.times {|num| (' '* num) + "The Flintstones rock!"} # First solution used .insert(0, ' ') but realized it wasn't one line

# q2
puts "the value of 40 + 2 is " + (40 + 2)
# The reason this doesn't work is because (40 + 2) is not a string and therefore can't be concatenated.
# This could be fixed by:
#   a) concatenation
puts "the value of 40 + 2 is " + (40 + 2).to_s
#   b) interpolation
puts "the value of 40 + 2 is #{40 + 2}"

# q3

def factors(number)
  divisor = number
  factors = []
  if number > 0
    loop do
      factors << number / divisor if number % divisor == 0
      divisor -= 1
      break if divisor == 0
    end
    factors
  else 
    puts 'Please enter a positive, non-zero number.'
  end
end

# bonus 1:
#   The purpose of `number % divisor == 0` is to make sure that the result of this operation is a non-float integer. Otherwise it wouldn't be a factor.

# bonus 2:
#   The purpose of `factors` on the last line is to return the list of factors.

# q4
# There is no difference between the output of these two methods. As far as I can tell they are identical for our purpose.
# !! I hadn't considered whether or not the caller would be mutated! Now I see that in the first method, the caller is used directly as an argument, whereas in the second method
#    a new variable is initialized within the method scope using the argument as a value.

# q5
# The first thing that stands out is that the variable `limit` is initialized in an outer scope, so it can't be accessed when called in the method def.
# I will add a third argument, limit.

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# q6
# The output of this code will be `34`.
# The method `mess_with_it` doesn't mutate the caller, so the value of `answer` never changes.

# q7
# This is not destructive. The only thing that will change is the return value.
# !! I was wrong on this one. Not sure why. I will have to spend some time understanding this a little better.

# q8
# resut = "paper"

# q9
# This will return "no". `foo` always returns "yes", & "yes" != "no"