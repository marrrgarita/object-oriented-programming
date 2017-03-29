class BankAccount
  def initialize
    @balance = 0
    @interest_rate = 0.05
  end

  def deposit(amount)
    @balance += amount
    return @balance
  end

  def withdraw(amount)
    @balance -= amount
    return @balance
  end

  def gain_interest
    @balance = (@balance * @interest_rate) + @balance
    return @balance
  end

end
