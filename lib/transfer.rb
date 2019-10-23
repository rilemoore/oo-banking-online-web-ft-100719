class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    
  end
  
  def valid?
    if(@sender.valid? && @receiver.valid?)
      true
    else
      false
    end
  end
  
  def execute_transaction
    
    if(@amount > @sender.balance || @status != "pending" || !valid?)
      "Transaction rejected. Please check your account balance."
      puts "hello"
      @status = "rejected"
    else
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
    
  end
  
  def reverse_transfer
    if(@status != "pending")
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "pending"
    end
  end
  
end




