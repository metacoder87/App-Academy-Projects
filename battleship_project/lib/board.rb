class Board
  
  attr_reader :size

    def initialize(n)
        @grid = Array.new(n) { Array.new(n).fill(:N) }
        @size = n * n
    end
  
    def [](pos)
        row, col = pos
        @grid[row][col]
    end
  
    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end
  
    def num_ships
        ships = 0
        @grid.flatten.each { |ele| ele == :S ? ships += 1 : nil }
        ships
    end
  
    def attack(pos)
        if self[pos] == :S
            self[pos] = :H
            puts 'you sunk my battleship!'
            true
        else self[pos] = :X
            false
        end
    end
  
    def place_random_ships
        ships = @size * 0.25
        while self.num_ships < ships
            spot = [ rand(0...@grid.length), rand(0...@grid.length) ]
            self[spot] = :S
        end
    end
  
    def hidden_ships_grid
        @grid.map { |row| row.map { |ele| ele == :S ? ele = :N : ele } }
    end
  
    def cheat
        Board.print_grid(@grid)
    end
  
end
