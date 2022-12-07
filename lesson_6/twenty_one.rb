require 'pry'

# Given solution considers suit.
# Since suit is not relevant in this game I chose to simply use 4 of each value.
FULL_DECK = {
  '2' => 4,    '3' => 4,     '4' => 4,    '5' => 4,
  '6' => 4,    '7' => 4,     '8' => 4,    '9' => 4,
  'Jack' => 4, 'Queen' => 4, 'King' => 4, 'Ace' => 4
}

# Face cards constant is used to determine card value.
# I realize now that I could have determined value without this.
FACE_CARDS = ['Jack', 'Queen', 'King']

def enter_to_continue
  puts "(Press 'Enter' to Continue.)"
  gets.chomp
end

def initial_deal(player, dealer, deck)
  2.times do
    deal_card(player, deck)
    deal_card(dealer, deck)
  end
end

# is it a problem that this method also deletes keys when they're out?
# Seemed efficient to put here but not sure.
def deal_card(hand, deck)
  card = deck.keys.sample
  deck[card] -= 1
  deck.delete(card) if deck[card] == 0
  hand << card
end

def player_hand_prompt(hand)
  hand_clone = hand.clone
  last_card = hand_clone.pop

  if hand_clone.size > 1
    hand_clone.map! { |card| "#{card}, " }
    p "You have: #{hand_clone.join} and #{last_card}"
  elsif hand_clone.size == 1
    p "You have: #{hand_clone[0]} and #{last_card}"
  else
    p "You have: #{last_card}"
  end
end

def dealer_hand_prompt(dealer_hand)
  first_card = dealer_hand[0]
  p "Dealer has: #{first_card} and an unknown card"
end

def determine_hand_value(hand)
  value = 0
  hand.each do |card|
    if FACE_CARDS.include?(card)
      value += 10
    elsif card == 'Ace'
      # The nested conditionals might be a little confusing....
      if (value + 11) > 21
        value += 1
      else
        value += 11
      end
    else
      value += card.to_i
    end
  end

  value
end

def bust?(hand)
  determine_hand_value(hand) > 21
end

def player_turn(hand, dealer_hand, deck)
  loop do
    system 'clear'
    dealer_hand_prompt(dealer_hand)
    player_hand_prompt(hand)
    value = determine_hand_value(hand)

    puts "Press 'h' to hit, 's' to stay."
    hit_or_stay = gets.chomp

    if hit_or_stay == 'h'
      deal_card(hand, deck)
    elsif hit_or_stay == 's'
      puts "You stay with a value of #{value}"
      break
    else
      puts "I'm sorry, that is not a valid option. Please try again."
      next
    end

    break if bust?(hand)
  end
end

def dealer_turn(hand, deck)
  loop do
    value = determine_hand_value(hand)
    puts "Dealer hand is worth #{value}"

    # break has to occur first in case hand already has a value of 17 or greater
    break if bust?(hand) || value >= 17
    puts "Dealer draws."
    deal_card(hand, deck)
  end
end

def determine_winner(player, dealer)
  player_total = determine_hand_value(player)
  dealer_total = determine_hand_value(dealer)

  if player_total > dealer_total
    puts "You won!"
  elsif dealer_total > player_total
    puts "Dealer won!"
  else
    puts "It's a tie!"
  end
end

loop do
  loop do
    deck = FULL_DECK
    player_hand = []
    dealer_hand = []

    system 'clear'

    puts "Welcome to Twenty-One!"
    puts ''
    puts "Shuffling..."
    enter_to_continue

    initial_deal(player_hand, dealer_hand, deck)
    player_turn(player_hand, dealer_hand, deck)

    # Given solution extracts this bust logic to a method, which is cleaner.
    if bust?(player_hand)
      puts "You bust!"
      puts "Dealer wins."
      break
    end

    dealer_turn(dealer_hand, deck)

    if bust?(dealer_hand)
      puts "Dealer busts!"
      puts "You win!"
      break
    end

    determine_winner(player_hand, dealer_hand)
    break
  end

  puts "Would you like to play again? (y/n)"
  play_again = gets.chomp

  if play_again == 'y'
    next
  else
    system 'clear'

    puts "Thanks for playing twenty-one!"
    puts ''
    break
  end
end
