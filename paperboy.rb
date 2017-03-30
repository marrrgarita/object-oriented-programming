class Paperboy
  attr_accessor :name, :experience
  attr_reader :earnings

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 0
  end

  
