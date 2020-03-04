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
  
end
