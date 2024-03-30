class Board

  @@win = false
  @@draw = false
  
  def self.display(board)
    puts "  #{board[0]} | #{board[1]} | #{board[2]}  "
    puts "-------------"
    puts "  #{board[3]} | #{board[4]} | #{board[5]}  "
    puts "-------------"
    puts "  #{board[6]} | #{board[7]} | #{board[8]}  "
  end

  def self.update_board(position, board, player)
    if player.symbol == "X"
      board[position.to_i - 1] = "X"
    else
      board[position.to_i - 1] = "O"
    end
  end

  def self.status?(board)
    # implement a switch statement here
  end

  def self.valid_move?(board, position)
    if board[position.to_i-1] == 'X' || board[position.to_i-1] == 'O'
      return false
    else
      return true
    end
  end

  private

  def victory
    
  end
  
end