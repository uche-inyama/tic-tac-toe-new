require_relative 'board'

class Player
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{last_name}"
  end

  def move
    Board.status(get_position)
  end

  private

  def get_position
    position = gets.chomp
  end
end