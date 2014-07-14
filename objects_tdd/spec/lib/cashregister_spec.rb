require 'rspec'
require File.join(File.dirname(__FILE__), '../../lib/cash_register')
# require './lib/cash_register' # what is the difference between lines 2 & 3?

describe CashRegister do
  describe 'purchase(amount)' do

    it 'should add an amount to @total' do
      expect(subject.purchase(3.42)).to eq(3.42)
      expect(subject.purchase(2.00)).to eq(5.42)
    end
  end

  describe 'pay(cost)' do
    it 'should accept payments' do
      subject.purchase(3.40)
      subject.purchase(10.00)
      expect(subject.pay(5.00)).to eq(8.40)
      expect(subject.pay(9.00)).to eq(0.60)
    end
  end

  describe 'show_total' do
    it 'should show the current total' do
      expect(subject.show_total).to eq(0)
    end
  end
end
