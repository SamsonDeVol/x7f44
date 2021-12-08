class Die

  attr_reader :number_of_sides
  attr_accessor :value
  attr_reader :prng

  def initialize(number_of_sides, value = 1)
    @number_of_sides = number_of_sides
    @value = value
    @prng = Random.new
  end

  def roll!
    self.value = prng.rand(1..number_of_sides)
    puts (value)
  end

  def makeRoll
    roll!
  end

#
#
  # def to_s
  #   value
  # end
#
# end

end
