# Question 2:
# Describe the difference between `!` and `?` in Ruby. 
# Answer:
# Generally `!` denotes a destructive method, while `?` denotes that the return value will be a boolean

# Explain what would happen in the following scenarios:

# 1. What is `!=` and where should you use it?
# Answer:
# `!=` means 'not equal to'. It should be used when you want to make sure a variable or expression is not equal to a specific value.

# 2. Put `!` before something, like `!user_name`
# Answer:
# This would denote that whatever you are doing is NOT `user_name`.

# 3. Put `!` after something like `words.uniq!`
# Answer:
# Generally this is reserved for denoting that the method is destructive and will therefore mutate the caller.

# 4. Put `?` before something
# Answer:
# I'm not actually aware of a situation in which this would happen

# 5. Put `?` after something
# Answer:
# Generally this denotes that the method will return a boolean

# 6. Put `!!` before something, like `!!user_name`
# Answer:
# You would do this if you want to return `true` or make sure that the object you're using this on is a truthy value