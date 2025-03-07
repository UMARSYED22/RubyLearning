class BankAccount
    def initialize(owner,balance=0)
      @owner=owner
      @balance=balance
    end
    def withdraw(amount)
      if(amount>@balance)
        puts "Insufficient Funds"
      else
      @balance-=amount
    end
  end
  def deposit(amount)
    @balance+=amount
  end

  def display
    puts "Balance = #{@balance}"
  end
end

a=BankAccount.new("Syed",5000)
a.deposit(10000)
a.withdraw(5000)
a.display
