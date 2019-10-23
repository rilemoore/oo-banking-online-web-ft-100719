class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def display_balance
    puts @balance
    @balance
  end
  
  def valid?
    if(@status == "open" && @balance > 0)
      true
    end
    nil
  end
  
  def close_account
    @status = "closed"
  end
  
end
