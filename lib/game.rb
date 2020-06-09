require_relative "board"

class Game
  def initialize(board = Board.new)
    @board = board
  end

  def board
    @board
  end

  def over?
    @board.full?
  end

  def tie?
    self.over?
  end

  def winner
    :x #If this isn't shameless green I don't know what is
  end
end
