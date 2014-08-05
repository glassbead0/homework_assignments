require 'rspec'
require File.expand_path(File.join(File.dirname(__FILE__), '../../lib/circle'))

describe Circle do
  subject { Circle.new(5) }

  it 'should be a circle' do
    expect(subject).to be_a(Circle)
  end

  describe 'circle methos' do
    it 'should calculate area' do
      expect(subject.area).to be_within(0.0001).of(78.53981633974475)
    end

    it 'should calculate circumference' do
      expect(subject.circumference).to be_within(0.0001).of(31.4159265358979)
    end
  end

  describe 'inherits from shape' do
    it 'is a shape' do
      expect(subject).to be_a(Shape)
      expect(subject.define).to eq('A collection of lines and/or curves that form a closed region in a plane')
    end
  end
end
