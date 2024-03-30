require_relative 'board'

class Player
  attr_reader :first_name, :last_name, :symbol

  def initialize(first_name, last_name, symbol)
    @first_name = first_name
    @last_name = last_name
    @symbol = symbol
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end


  def move
    position = get_position
    [self, position]
  end

  private

  def get_position
    position = gets.chomp
  end
end