class Player
  attr_writer :gold_coins, :health_points, :lives

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
    return @lives
  end

  def collect_treasure
    @gold_coins += 1
    return @gold_coins
  end


end
