#!/usr/bin/env ruby

# the cash register class
class CashRegister
  def initialize
    @total = 0.00
  end

  def purchase(cost)
    @total += cost.round(2)
  end

  def total
    '%.2f' % @total
  end

  def pay(amount_paid)
    change = amount_paid - @total
    @total -= amount_paid
    puts 'Your change is %.2f' % change if change >= 0
    puts 'Your new total is %.2f' % @total if change < 0
    @total = 0 if @total < 0
  end
end

register = CashRegister.new

puts register.total
register.purchase(3.78)
register.purchase(5.22)
puts register.total
register.pay(5.00)
puts register.total
register.pay(4.00)
puts register.total
