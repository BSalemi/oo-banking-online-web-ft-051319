class Transfer
  attr_accessor :sender, :receiver, :status, :amount


  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = 50
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if self.status = "pending" && @sender.valid?
      @sender.balance -= amount
      @receiver.balance += amount
      self.status = "complete"
    else
      @status = "rejected"
    "Transaction rejected. Please check your account balance."
    end
  end

end
