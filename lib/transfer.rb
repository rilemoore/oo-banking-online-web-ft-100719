class Transfer
  
  attr_accessor :sender, :receiver, :status, :transfer_amount
  
  def initialize(sender, receiver, transfer_amount)
    
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
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
    
    if(@transfer_amount > @sender.balance || @status != "pending")
      "fail"
    else
      @sender.balance -= @transfer_amount
      @receiver.balance += @transfer_amount
      @status = "complete"
    end
    
  end
  
  def reverse_transfer
    if(@status != "pending")
      @sender.balance += @transfer_amount
      @receiver.balance -= @transfer_amount
      @status = "pending"
    end
  end
  
end




