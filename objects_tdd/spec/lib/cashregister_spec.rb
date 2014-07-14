require 'rspec'
require File.join(File.dirname(__FILE__), '../../lib/cash_register')
# require './lib/cash_register'

describe CashRegister do
  describe 'purchase(amount)' do

    it 'should add an amount to @total' do
      expect(subject.purchase(3.42)).to eq(3.42)
      expect(subject.purchase(2.00)).to eq(5.42)
    end
  end

  describe 'pay(cost)' do
    it 'should accept payments' do
      subject.purchase(13.40)
      expect(subject.pay(5.00)).to eq(nil) # still owes money, so return nill
      expect(subject.pay(9.00)).to eq(0.60) # returns 0.60, which is the change
    end
  end

  describe 'show_total' do
    it 'should show the current total' do
      expect(subject.show_total).to eq(0)
      subject.purchase(2)
      expect(subject.show_total).to eq(2.00)
      subject.pay(5)
      expect(subject.show_total).to eq(0)
    end
  end
end
