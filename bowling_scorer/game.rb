class Game
  attr_accessor :balls

  def initialize
    @balls = []
  end

  def roll(x)
    balls << x
  end

  def score
    balls.inject{ |sum,x| sum + x } 

    # 10.times do
    # end
  end

  def spare?(index)
  end

  def strike?(index)
  end

  def score_spare(index)
  end

  def score_strike(index)
  end
end
