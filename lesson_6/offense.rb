# Use defensive method to create an offensive one -- if there is a winning square, the computer will pick that one.

def find_winning_square(line, board)
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

# All we have to do is switch the argument for count on line 4 to COMPUTER_MARKER

def computer_places_piece(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_winning_square(line, brd)
    break if square
    
    square = find_at_risk_square(line, brd)
    break if square
  end

  # I also altered the computer_places_piece method to search for an offensive move first.

  # After viewing the given solution I've decided to use a mix of my solution and the given one.
  # I like how succinct the given solution is in terms of giving the find_at_risk_square method another argument to perform both offense and defense,
  # but I prefer my solution for adding functionality to the computer_places_piece method.
  # Also, I set my method up to search for offensive moves first, since that makes more sense -- no need to block the player if computer can just win.
  