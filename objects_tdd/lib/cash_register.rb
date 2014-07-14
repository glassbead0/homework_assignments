# cash register
class CashRegister
  def initialize
    @total = 0.00
  end

  def purchase(cost)
    @total += cost.to_f.round(2)
  end

  def pay(amount)
    @total -= amount.to_f.round(2)
    if @total > 0
      puts "You still owe #{@total}"
      @total.round(2)
    elsif @total == 0
      0
    else
      @change = -@total
      @total = 0
      puts "Thanks, your change is #{@change}"
      @change.round(2)
    end
  end

  def show_total
    @total
  end
end
