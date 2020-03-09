require_relative "board"
require_relative "player"

class Battleship
  
    ttr_reader :board, :player

    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = n * n * 0.5
    end
  
    def start_game
        @board.place_random_ships
        puts @board.num_ships
        puts @board.print
    end

end
