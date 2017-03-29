class Player
  attr_writer :gold_coins, :health_points, :lives

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
    return "Level up! You now have #{@lives} lives"
  end

  def collect_treasure
    @gold_coins += 1

    if @gold_coins % 10 == 0
      level_up
    else
      return "You have #{@gold_coins} gold coins"
    end

  end




end
