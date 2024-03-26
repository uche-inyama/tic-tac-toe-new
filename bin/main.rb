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

player_1 = Player.new(first_name_1, last_name_1)
player_2 = Player.new(first_name_2, last_name_2)

puts "--------------"

puts "Start Game"

puts "--------------"
puts Board.display(board)

