module Validate
  
  def validate(player, board, count)
    puts Board.display(board)
    puts "#{player.first_name} make your move"
    player, position = player.move
    until Board.valid_move?(board, position) do
      puts "Invalid, #{player.first_name}"
      puts Board.display(board)
      puts "#{player.first_name} make your move"
      player, position = player.move
    end
    Board.update_board(position, board, player)
    if Board.status(board, player, count) == true
      puts Board.display(board)
      puts "#{player.full_name} won"
      return true
    elsif Board.status(board, player, count) == false
      puts Board.display(board)
      puts "It was a tie"
      return false
    end
    count += 1
  end
end