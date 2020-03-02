class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  
  def self.valid_pegs?(arr)
    arr.all? { |char| POSSIBLE_PEGS.include?(char.upcase) }
  end
  
  attr_reader :pegs
  
  def initialize(pegs)
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map { |peg| peg.upcase }
    else raise "Error"
    end
  end
  
  def self.random(num)
    pegs_arr = []
    count = num
    while count > 0
      pegs_arr.push(POSSIBLE_PEGS.keys.sample)
      count -= 1
    end
    Code.new(pegs_arr)
  end
  
  def self.from_string(str)
    Code.new(str.split(''))
  end
  
  def [](i)
    @pegs[i]
  end
  
  def length
    @pegs.length
  end

end
