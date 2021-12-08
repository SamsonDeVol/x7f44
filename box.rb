class Box

  attr_reader :shut_tiles, :number_of_tiles

  def initialize(number_of_tiles, tiles = [], shut_tiles = [])
    @number_of_tiles = number_of_tiles
    @tiles = tiles
    @shut_tiles = shut_tiles
  end

  def set_tiles
    @number_of_tiles.times do |i|
      @tiles[i] = i + 1
    end
  end

  def shut?
    @shut_tiles.length == number_of_tiles
  end

  def can_flip_for?(value)
    Integer(value) == @tiles[Integer(value)-1]
  end

  def get_tiles
    @tiles
  end

  def flip_tiles(value)
    @tiles[Integer(value)-1] = "."
    @shut_tiles.append(value)

  end

  def to_s
    "Box"
  end

end
