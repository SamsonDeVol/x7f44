class Game

  WELCOME_MESSAGE = "Welcome to Shut da Box!"
  WINNING_MESSAGE = "You shut da box!"

  attr_reader :box, :dice

  def initialize(box, dice)
    @box = box
    @dice = dice
  end

  def over?
    box.shut?
  end

  def start!
    prepare_next_round
  end

  def prepare_next_round
    dice.each(&:roll!)
  end

  def play
    print '| '
    box.get_tiles().each do |tile|
      print tile.to_s + ' | '
    end
    print "\n"
    print "You rolled: "
    dice.each do |die|
      print "#{die.value} "
    end
    puts "\n"
    puts "Which tiles would you like to flip (separate by spaces): "
    tiles_to_flip = gets.chomp

    if box.can_flip_for?(tiles_to_flip)
      box.flip_tiles(tiles_to_flip)
    else 
      puts "cannot flip tile(s)"
    end
 
    prepare_next_round
  end

  def results
    over? ? WINNING_MESSAGE : "Game over, you did not shut da box."
  end

end
