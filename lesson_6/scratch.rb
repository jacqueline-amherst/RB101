require 'pry'

def joinand(hand)
  hand_clone = hand.clone
  last_card = hand_clone.pop
  
  if hand_clone.size > 1
    hand_clone.map! { |card| "#{card}, "}
    p "You have: #{hand_clone.join} and #{last_card}"
  elsif hand_clone.size == 1
    p "You have: #{hand_clone[0]} and #{last_card}"
  else
    p "You have: #{last_card}"
  end
end

joinand([1])                  
joinand([1, 2])               
joinand([1, 2, 3])         
joinand([1, 2, 3, 4, 'Jack'])   