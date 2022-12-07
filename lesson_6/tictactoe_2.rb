require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]  + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]]  + # columns
                [[1, 5, 9], [3, 5, 7]]               # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def place_piece(brd, player)
  if player == 'player'
    player_places_piece(brd)
  elsif player == 'computer'
    computer_places_piece(brd)
  end
end

def player_places_piece(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square && brd[5] == INITIAL_MARKER
    square = 5
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def alternate_player(current_player)
  if current_player == 'player'
    return 'computer'
  elsif current_player == 'computer'
    return 'player'
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def joinor(arr, delimiter = ', ', word = 'or')
  arr_clone = arr.clone
  last_element = arr_clone.pop
  
  if arr_clone.size > 1
    arr_clone.map! { |num| num.to_s + delimiter }
    p "#{arr_clone.join}#{word} #{last_element}"
  elsif arr_clone.size == 1
    p "#{arr_clone[0]} #{word} #{last_element}"
  else
    p "#{last_element}"
  end
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  player_score = 0
  computer_score = 0

  loop do

    puts "Who goes first? You can type 'player' or 'computer', or just hit enter for a random choice."
  current_player = gets.chomp

  if current_player == ''
    current_player = ['computer', 'player'].sample
  elsif ['computer', 'player'].include?(current_player) == false
    puts "I'm sorry, that's not a valid option. Please try again."
    next
  end

  board = initialize_board

    loop do
      display_board(board)
      place_piece(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      case detect_winner(board)
      when 'Player'
        player_score += 1
      when 'Computer'
        computer_score += 1
      end
    else
      prompt "It's a tie!"
    end

    puts ''
    prompt "Current Score:"
    prompt "Player: #{player_score}"
    prompt "computer: #{computer_score}"
    break if computer_score == 5 || player_score == 5
    puts ''
    prompt "Press enter to start next match."
    gets.chomp
  end

  if player_score == 5
    prompt "Congratulations! You won!"
  elsif computer_score == 5
    prompt "So sorry for your loss."
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

system 'clear'
prompt "Thanks for playing Tic Tac Toe!"
prompt "Goodbye"
puts ''
