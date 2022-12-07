require 'pry'

# in order to make the computer more defensive, we have to consider every winning combination--
# if two consecutive elements in winning arrays are PLAYER_MARKER,
# computer must play the remaining element.

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]  + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]]  + # columns
                [[1, 5, 9], [3, 5, 7]]               # diagonals

# 1. look through WINNING_LINES to see if any defensive moves are necessary
# 2. if there are defensive moves, make defensive move
# 3. otherwise, make random move
=begin
detect_defensive_move(brd)
  WINNING_LINES.select do |line|
    (line[0] == PLAYER_MARKER && line[1] == PLAYER_MARKER) ||
    (line[1] == PLAYER_MARKER && line[2] == PLAYER_MARKER)
  end
end
=end

board = {1 => ' ', 2 => 'X', 3 => ' ',
         4 => 'X', 5 => 'X', 6 => ' ',
         7 => 'X', 8 => ' ', 9 => ' '}

def detect_defensive_move(brd)
  defensive_moves = []
  WINNING_LINES.each do |arr|
    if brd[arr[0]] == 'X' && brd[arr[1]] == 'X'
      defensive_moves << arr[2]
    elsif brd[arr[1]] == 'X' && brd[arr[2]] == 'X'
      defensive_moves << arr[0]
    end
  end
  
  defensive_moves
end

def defensive_move?(brd)
  detect_defensive_move(brd).any?
end

p defensive_move?(board)
p detect_defensive_move(board).sample