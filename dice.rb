class Dice

  def roll()
    result = []
    4.times do
      roll = rand(1..6)
      result << roll
    end
    return result
  end

  def roll_to_score(result)
    return  result.sort.reverse.join.to_i()
  end

end
