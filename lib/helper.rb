require_relative './board'

module Validate
  @position = 0

  def get_position 
    @position
  end

  def set_position=position
    @position = position
  end
  
  def is_valid?(board, position, player)
    until Board.valid_move?(board, position) do
      puts "The space is taken, #{player.first_name} choose another spot"
      puts Board.display(board)
      puts "#{player.first_name} make your move"
      player, position = player.move
      set_position=position
    end
    true
  end

end