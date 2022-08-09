# a method that determines the index of the 3rd occurrence of a given character in a string. 
# For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). 
# If the given character does not occur at least 3 times, return nil. 

=begin

Given a string.

Iterate over string using a single character as an argument.
  If that character occurs at least 3 times in given string,
    Return the index value of the third occurance of character.
  If that character occurs fewer than 3 times or not at all,
    Return nil.
    
=end

# Feeling much better about this one than some of the previous ones.