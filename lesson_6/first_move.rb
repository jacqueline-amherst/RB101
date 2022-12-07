loop do
  puts "Who goes first? 'p' for player, 'c' for computer."
  first_move = gets.chomp

  board = initialize_board

  if first_move == 'c'
    loop do
      display_board(board)

      computer_places_piece(board)
      break if someone_won?(board) || board_full?(board)
      
      display_board(board)

      player_places_piece(board)
      break if someone_won?(board) || board_full?(board)
    end
  elsif first_move == 'p'
    loop do
      display_board(board)

      player_places_piece(board)
      break if someone_won?(board) || board_full?(board)


      computer_places_piece(board)
      break if someone_won?(board) || board_full?(board)
    end
  else
    puts "I'm sorry, that is not a valid option."
    next
  end