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

  def reset
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    return "*GAME RESET* Gold Coins:#{@gold_coins} Health Points #{@health_points} Lives:#{@lives}"
  end

  def do_battle(damage)
    @health_points -= damage

    if @health_points < 1
      @lives -= 1

      @health_points = 10

      return "You have died. Your lives are now at #{@lives}"

    elsif @lives == 0
      reset

    else
      return "Your health is at #{@health_points} points"
    end
  end

end
