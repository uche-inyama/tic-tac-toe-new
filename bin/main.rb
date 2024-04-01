require_relative '../lib/board'
require_relative '../lib/player'

board = ['1','2','3','4','5','6','7','8','9']
count = 0

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

puts "#{ player_1.full_name } your symbol is #{player_1.symbol}"

puts "#{ player_2.full_name } your symbol is #{player_2.symbol}"

puts "--------------"

puts "Start Game"

puts "--------------"

while count <= 4
  result_1 = Board.validate(player_1, board, count)
  break if result_1 == true
  break if result_1 == false
  result_2 = Board.validate(player_2, board, count)
  break if result_2 == true 
  break if result_2 == false
  count += 1
end



