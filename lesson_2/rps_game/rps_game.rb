VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(choice, computer)
  if (choice == 'rock' && computer == 'scissors') ||
    (choice == 'paper' && computer == 'rock') ||
    (choice == 'scissors' && computer == 'paper')
    prompt("You won!")
  elsif (choice == 'rock' && computer == 'paper') ||
    (choice == 'paper' && computer == 'scissors') ||
    (choice == 'scissors' && computer == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample
  
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
  
  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")


=begin

------Things to Consider------

1.) moving the display_results method above the prompt method def does not impact the functionality
  of the program because the definitions share the same scope and are therefore accessible to each
  other...
  
2.) This helps me understand a little better. The methods can call each other regardless of the order
  in which they were defined, but only if both methods have been called before the first invocation.
  A method cannot be called before it is defined.
  
3.) If display_results returned a string as opposed to outputting the string directly, it would have to 
  be told to output the result when invoked. For instance: puts test_method
  
4.) I would like to define a set of rules like:
    
    'rock' > 'scissors'
    'scissors' > 'paper'
    etc
    
  Then, we could write a statement like:
  
    if choice > computer_choice
      puts "You win!"
    elsif choice < computer_choice
      puts "Computer wins!"
    else
      puts "It's a tie!"
      
  I'm not sure how to do this in practice, but it would make the code more intuitive and save a 
  lot of space.
=end


=begin

def display_result(player, computer)
  