# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.

def real_palindrome?(string)
  acceptable_chars = '1234567890abcdefghijklmnopqrstuvwxyz'
  chars = string.downcase.split('')
  chars.each do |char|
    unless acceptable_chars.include?(char)
      chars.delete(char)
    end
  end
  chars == chars.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false