# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument 
# (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def nth_power(num, power)
  result = num

  (power - 1).times do 
    result = multiply(result, num)
  end

  result
end

p nth_power(3, 5)

