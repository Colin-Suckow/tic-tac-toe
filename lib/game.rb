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
end
