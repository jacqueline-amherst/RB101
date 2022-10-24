NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.each_char.map {|char| char = NUMBERS[char]}

  value = 0
  digits.each {|digit| value = 10 * value + digit}

  value
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570

 # I will admit, I couldn't get this one. I followed along with the given solution and get it now, but couldn't get it by myself.