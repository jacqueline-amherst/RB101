VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'Spock']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'Spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'Spock') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'Spock' && second == 'scissors') ||
    (first == 'Spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

player_counter = 0
computer_counter = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} (r, p, s, l, S)")
    choice = Kernel.gets().chomp()
    
    case choice
      when 'r'
        choice = 'rock'
      when 'p'
        choice = 'paper'
      when 's'
        choice = 'scissors'
      when 'l'
        choice = 'lizard'
      when 'S'
        choice = 'Spock'
    else
      choice = choice
    end
    
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
    
  computer_choice = VALID_CHOICES.sample
    
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
    
  display_results(choice, computer_choice)
  
  if display_results == "You won!"                     ## This all needs to change here... not sure how yet
    player_counter += 1
  elsif display_results == "Computer won!"
    computer_counter += 1
  else
    puts "The counter remains the same."
  end
  
  if player_counter == 3
    puts "Congratulations, you have won the match!"
    break
  elsif computer_counter == 3
    puts "Unfortunately the computer has bested you!"
    break
  else
    puts "And so begins the next rount..."
  end
end

prompt("Thank you for playing. Goodbye!")