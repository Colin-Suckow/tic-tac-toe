require_relative 'board'

class Game
    def initialize(board = nil)
        @board = board
    end

    def board
        @board
    end
end
