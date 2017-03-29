class Cat
  attr_reader :name, :food, :meal_time

  def initialize(name, food, meal_time)
    @name = name
    @food = food
    @meal_time = meal_time
  end

  def eats_at
    if meal_time < 12
      "#{meal_time} AM"
    elsif meal_time == 12
      "#{meal_time} PM"
    else
      "#{meal_time - 12} PM"
    end
  end

  def meow
    "My name is #{name} and I eat #{food} at #{meal_time}:00 hours"
  end
end
