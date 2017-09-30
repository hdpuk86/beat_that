require_relative('dice')

class Player

  def initialize(name, score)
    @name = name
    @score = score
  end

  def name()
    return @name
  end

  def roll_new(dice)
    result = dice.roll()
    @score = dice.roll_to_score(result)
    return @score
  end

  def score()
    return @score
  end

  def update_score(new_score)
    @score = new_score
  end

end
