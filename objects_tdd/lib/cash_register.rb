# cash register
class CashRegister
  def initialize
    @total = 0.00
  end

  def purchase(cost)
    @total += cost.to_f.round(2)
  end

  def pay(amount) # will return the change, or 0 for even balance, or nil if still owe money
    @total -= amount.to_f.round(2)
    if @total < 0
      @change = -@total
      @total = 0
      @change.round(2)
    elsif @total > 0
      nil
    else
      0
    end
  end

  def show_total
    @total.round(2)
  end
end
