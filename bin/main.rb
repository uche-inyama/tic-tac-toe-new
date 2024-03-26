require_relative '../lib/board'
require_relative '../lib/player'

board = ['1','2','3','4','5','6','7','8','9']

puts "Player 1 enter your first name"
first_name_1 = gets.chomp
puts "Player 1 enter your last name"
last_name_1 = gets.chomp

puts "Player 2 enter your first name"
first_name_2 = gets.chomp
puts "Player 2 enter your last name"
last_name_2 = gets.chomp

player_1 = Player.new(first_name_1, last_name_1, "X")
player_2 = Player.new(first_name_2, last_name_2, "O")

puts "Player 1 your symbol is #{player_1.symbol}"

puts "player 2 your symbol is #{player_2.symbol}"

puts "--------------"

puts "Start Game"

puts "--------------"

puts Board.display(board)

# should be a loop
  puts "player #{variable} make your move"

  player, position = player_1.move(player_1)
  Board.update_board(position, board, player)

  puts Board.display(board)
# 


