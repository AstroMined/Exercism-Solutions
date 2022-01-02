module SavingsAccount
  def self.interest_rate(balance)
    @balance = balance
    if @balance < 0
      -3.213
    elsif @balance < 1000
      0.5
    elsif @balance < 5000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    @balance = balance
    if @balance < 0
      @balance + (@balance * 0.03213)
    elsif @balance < 1000
      1.005 * @balance
    elsif @balance < 5000
      1.01621 * @balance
    else
      1.02475 * @balance
    end  
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    @current_balance = current_balance
    @desired_balance = desired_balance
    @counter = 0
    until @current_balance >= @desired_balance
      @counter += 1
      if @current_balance < 0
        break
      elsif @current_balance == 0
        break
      elsif @current_balance < 1000
        @current_balance *= 1.005
      elsif @current_balance < 5000
        @current_balance *= 1.01621
      else
        @current_balance *= 1.02475
      end
    end
    @counter
  end
end
