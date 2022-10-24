# Palindromic number

def palindromic_number?(integer)
  integer = integer.to_s
  integer == integer.reverse
end

p palindromic_number?(00034543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true