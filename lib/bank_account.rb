class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(cash)
    @balance += cash #takes the cash value and adds it to the balance
  end

  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid?
    if @status == "open" && @balance > 0
      true
    else
      false
    end
  end

def close_account
  @status = "closed"
end


end
