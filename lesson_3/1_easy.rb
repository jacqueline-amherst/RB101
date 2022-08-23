# q1: I expect this to print [1, 2, 2, 3] because uniq isn't followed by a bang, therefore doesn't permanently alter numbers

# q2: ! generally follows a method name (i.e. capitalize!) if that method is destructive.
# =>  ? generally follows a method name (i.e. is_a?) if that method verifies whether an object is or is not what it is checking for. These methods generally return a Boolean.
# =>  1. != means 'not equal to' and is used as a comparitor. For instance: if object != 0...
# =>  2. When ! precedes something like user_name (!user_name) it is equivalent to 'not user_name'.
# =>  3. Same as originally explained-- used to mutate the caller
# =>  4. I don't know that I've encountered ? preceding something and can't figure that out in irb
# =>  5. ^^
# =>  6. !! preceding something is equivalent to 'not not' so !!user_name is not not username. A double negative. I don't know why this would be practical.

# q3: 
# advice = "Few things in life are as important as house training your pet dinosaur."
# puts advice.gsub("important", "urgent")

#q4:

# q5: Programmatically determine if 42 lies between 10 and 100.
#   Given a range of numbers
#   iterate over the integers, comparing to another integer.
#   if integers are identical
#     print "Your number is in the range"
#   else print "Your number is not in the range"

=begin

input_range = 10..100
input_number = 42

def check_num(range, num)
  if range.include?(num)
    puts "Your number is in the range."
  else
    puts "Your number is not in the range."
  end
end

check_num(input_range, input_number)

=end
# I would've gotten an answer similar to the given answer-- my original answer was:
#   (10..100).include?(42)
# But that seemed too simple so I didn't use it.

# q6: 
# 1)
famous_words = "seven years ago..."
famous_words.prepend("Four score and ")

# 2)
famous_words = "seven years ago..."
famous_words2 = "Four score and "
famous_words = famous_words2 + famous_words

# q7:
flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flintstones.flatten!