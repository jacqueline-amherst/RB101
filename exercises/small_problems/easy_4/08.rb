NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  neg = false

  if string[0] == '-'
    neg = true
    string.delete! '-'
  elsif string[0] == '+'
    string.delete! '+'
    neg = false
  end

  digits = string.each_char.map {|char| char = NUMBERS[char]}

  value = 0
  digits.each {|digit| value = 10 * value + digit}

  if neg
    value = value - (value * 2)
  end

  value
end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100