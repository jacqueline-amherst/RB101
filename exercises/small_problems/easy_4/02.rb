# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

def ordinal(number)
  last_digit = number.to_i.digits.first
  last_two = number.to_i.digits.reverse.last(2).join

  if last_two.to_i >= 11 && last_two.to_i <= 13
    number + "th"
  else
    case last_digit
    when 1
      number + "st"
    when 2
      number + "nd"
    when 3
      number + "rd"
    else
      number + "th"
    end
  end
end

def century(integer)
  century = (integer.to_f / 100).ceil.to_s
  ordinal(century)
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
