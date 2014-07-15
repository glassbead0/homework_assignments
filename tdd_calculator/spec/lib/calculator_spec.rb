require 'rspec'
require File.expand_path(File.join(File.dirname(__FILE__), '../../lib/calculator'))
# require './lib/calculator'

describe Calculator do
  it 'should be a Calculator' do
    expect(subject).to be_a(Calculator)
  end

  describe '#addition(number1, number2)' do
    it 'handles adding the two positive numbers' do
      expect(subject.addition(3, 2)).to eq(5)
    end
    it 'handles adding the two negative numbers' do
      expect(subject.addition(-5, -7)).to eq(-12)
    end
    it 'handles adding the one positive and one negative number' do
      expect(subject.addition(9, -20)).to eq(-11)
    end
    it 'handles adding a number to 0' do
      expect(subject.addition(0, 42.998)).to eq(42.998)
    end
    it 'raises an error if either of the arguments is not a number' do
      expect { subject.addition(5, 'orange') }.to raise_error(TypeError)
    end
  end

  describe '#subtraction(number1, number2)' do
    it 'handles subtracting the two positive numbers' do
      expect(subject.subtract(9, 3)).to eq(6)
    end
    it 'handles subtracting the two negative numbers' do
      expect(subject.subtract(-4, -10)).to eq(6)
    end
    it 'handles subtracting the one positive and one negative number' do
      expect(subject.subtract(500, -500)).to eq(1000)
    end
    it 'handles subtracting a number from 0' do
      expect(subject.subtract(0, 99.999999)).to be_within(0.00001).of(-100)
    end
    it 'raises an error if either of the arguments is not a number' do
      expect { subject.subtract([9, 4, 3, 2], 'blue') }.to raise_error(TypeError)
    end
  end

  describe '#multiply(number1, number2)' do
    it 'handles multiplying the two positive numbers' do
      expect(subject.multiply(2.5, 4)).to eq(10)
    end
    it 'handles multiplying the two negative numbers' do
      expect(subject.multiply(-3, -4)).to eq(12)
    end
    it 'handles multiplying the one positive and one negative number' do
      expect(subject.multiply(18, -2)).to eq(-36)
    end
    it 'handles multiplying a number to 0' do
      expect(subject.multiply(2_345_432_354_352_343_534_343_534, 0)).to eq(0)
    end
    it 'handles multiplying a number to 1' do
      expect(subject.multiply(1, 987_654_321)).to eq(987_654_321)
    end
    it 'raises an error if either of the arguments is not a number' do
      expect { subject.multiply([1, 2], [3, 4]) }.to raise_error
    end
  end

  describe '#divide(number1, number2)' do
    it 'handles dividing one positive number by a second positive number' do
      expect(subject.divide(9, 2)).to eq(4.5)
    end
    it 'handles dividing one positive number by a second negative number' do
      expect(subject.divide(42, -7)).to eq(-6)
    end
    it 'handles dividing one negative number by a second negative number' do
      expect(subject.divide(-1, -3)).to be_within(10**(-5)).of(0.33333333)
    end
    it 'raises an error if dividing a number by 0' do
      expect(subject.divide(10, 0).infinite?).to eq(1)
      expect(subject.divide(-5, 0).infinite?).to eq(-1)
    end
    it 'handles dividing a number to 1' do
      expect(subject.divide(7, 1)).to eq(7)
    end
    it 'raises an error if either of the arguments is not a number' do
      expect { subject.divide(2, 'three') }.to raise_error
    end
  end
end
