class Paperboy
  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 0
  end

  def quota
    @quota = (@experience/2) + 50
    "#{@name}, you must deliver #{@quota} papers today"
  end

  def deliver(house_start, house_end)
    papers = house_end - house_start

    if papers < @quota
      @earnings += (0.25 * papers) - 2
      @experience += papers

    else
      @earnings += (0.25 * @quota) + ((papers - @quota) * 0.5)
      @experience += papers
    end

    return @earnings
  end

  def report
    "I'm #{name}, I've delivered #{experience} papers and I've earned #{earnings}"
  end

end
