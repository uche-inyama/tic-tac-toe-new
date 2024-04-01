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

puts Board.display(board)


while count <= 4
  puts "#{player_1.first_name} make your move"
  player, position = player_1.move
  until Board.valid_move?(board, position) do
    puts "Invalid, #{player.first_name}"
    puts Board.display(board)
    puts "#{player.first_name} make your move"
    player, position = player_1.move
  end
  Board.update_board(position, board, player)
  if Board.status(board, player, count) == true
    puts Board.display(board)
    puts "#{player.full_name} won"
    break
  elsif Board.status(board, player, count) == false
    puts Board.display(board)
    puts "It was a tie"
    break
  end
  puts Board.display(board)

  puts "#{player_2.first_name} make your move"
  player, position = player_2.move
  until Board.valid_move?(board, position) do
    puts "Invalid move, #{player_2.first_name}"
    puts Board.display(board)
    puts "#{player_2.first_name} make your move"
    player, position = player_2.move
  end
  Board.update_board(position, board, player)
  if Board.status(board, player, count) == true
    puts Board.display(board)
    puts "#{player.full_name} won"
    break
  elsif Board.status(board, player, count) == false
    puts Board.display(board)
    puts "It was a tie"
    break
  end
  puts Board.display(board)
  count += 1
end



