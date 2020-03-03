class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  #Part1

  attr_accessor :pegs

  def self.valid_pegs?(arr)
    arr.all? { |char| POSSIBLE_PEGS.include?(char.upcase) }
  end

  def self.random(num)
    pegs_arr = []
    num.times { pegs_arr << POSSIBLE_PEGS.keys.sample }
    
    Code.new(pegs_arr)
  end

  def self.from_string(str)
    Code.new(str.split(''))
  end

  def initialize(pegs)
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map { |peg| peg.upcase }
    else raise "Error"
    end
  end

  def [](i)
    @pegs[i]
  end

  def length
    @pegs.length
  end
  
  #Part 2
  
  def num_exact_matches(arr)
    count = 0
    (0...arr.length).each { |i| arr[i] == self[i] ? count += 1 : nil }
    count
  end
  
end
