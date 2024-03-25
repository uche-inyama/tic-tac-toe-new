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

  def self.status(cordinate)
    # implement a switch statement here
  end
end