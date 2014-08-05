require 'rspec'
require File.expand_path(File.join(File.dirname(__FILE__), '../../lib/dodecagon'))

describe Dodecagon do
  describe 'methods for dodecagon' do
    subject { Dodecagon.new(10) }

    it 'should be a dodecagon' do
      expect(subject).to be_a(Dodecagon)
    end

    it 'should find the perimeter' do
      expect(subject.perimeter).to eq(120)
    end
  end

  describe 'it belongs to the shape class ' do
    subject { Dodecagon.new(10) }
    it 'should have the define method' do
      expect(subject.define).to eq('A collection of lines and/or curves that form a closed region in a plane')
      expect(subject).to be_a(Shape)
    end

  end
end
