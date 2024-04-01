require_relative './helper'

class Board
  extend Validate

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
    elsif player.symbol == "O"
      board[position.to_i - 1] = "O"
    end
  end

  def self.status(board, player, count)
    result = self.win(board)
    if !result.nil? and result.eql? player.symbol
      return true
    elsif self.tie?(board, count)
      return false
    end
  end

  def self.valid_move?(board, position)
    if board[position.to_i-1] == 'X' || board[position.to_i-1] == 'O' ||
     position.length == 0
      return false
    else
      return true
    end
  end

  def self.tie?(board, count)
    if count == 4 and self.win(board) == nil
      return true
    end
  end

  def self.win(board)
    if board[0].eql? board[1] and board[1].eql? board[2]
      return board[0]
    elsif board[3].eql? board[4] and board[4].eql? board[5]
      return board[3]
    elsif board[6].eql? board[7] and board[7].eql? board[8]
      return board[6]
    elsif board[0].eql? board[3] and board[3].eql? board[6]
      return board[0]
    elsif board[1].eql? board[4] and board[4].eql? board[7]
      return board[1]
    elsif board[2].eql? board[5] and board[5].eql? board[8]
      return board[2]
    elsif board[0].eql? board[4] and board[4].eql? board[8]
      return board[0]
    elsif board[2].eql? board[4] and board[4].eql? board[6]
      return board[2]
    else
      return nil
    end
  end
end