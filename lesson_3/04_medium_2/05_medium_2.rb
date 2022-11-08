# Question 5:
# Depending on a method to modify its arguments can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Whether the above "coincidentally" does what we think we wanted depends upon what is going on inside the method.
# How can we cange this code to make the result easier to predict and easier for the next programmer to maintain?
# That is, the resulting method should not mutate either argument, bu `my_string` should be set to 'pumpkinsrutabaga' and `my_array` should be set to ['pumpkins', 'rutabaga']


# Okay, I didn't do any work on this, just checked the solution because I was not understanding what was being asked.
# Or, rather, I understood what was being asked but not how I was meant to implement it.
# If this were an interview I would have had a few question.
# Makes sense now, though.