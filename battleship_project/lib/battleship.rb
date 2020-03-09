require_relative "board"
require_relative "player"

class Battleship
  
    ttr_reader :board, :player

    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = n * n / 2
    end
  
    def start_game
        @board.place_random_ships
        puts "Number of ships: #{@board.num_ships}"
        @board.print
    end
  
    def lose?
        if @remaining_misses <= 0
            puts 'you lose'
            true
        else false
        end
    end
  
    def win?
        if @board.num_ships < 1
            puts 'you win'
            true
        else false
        end
    end
  
    def game_over?
        if self.win? == true
            true
        elsif self.lose? == true
            true
        else false
        end
    end
  
    def turn
        pos = @player.get_move
        attack = @board.attack(pos)
        @board.print
        if attack == false
            @remaining_misses -= 1
        else true
        end
        puts @remaining_misses
    end

end
