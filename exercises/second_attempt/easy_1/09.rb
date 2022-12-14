=begin
------------------Understand the Problem------------
 
Get Middle Character:

  Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
  If the argument has an odd length, you should return exactly one character.
  If the argument has an even length you should return exactly two characters.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

- initialize `size`, set to size of `string`
- if `size` is odd,
  - return character at index (`size` / 2)
- else if `size` is even,
  - return characters at indices ((`size`/ 2) - 1) through (`size` / 2)

 

--------------------Code With Intent-----------------
=end

def center_of(string)
  size = string.size
  size.odd? ? string[size / 2] : string[(size / 2) - 1, 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
