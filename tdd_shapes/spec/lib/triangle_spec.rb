require 'rspec'
require File.expand_path(File.join(File.dirname(__FILE__), '../../lib/triangle'))

describe Triangle do
  describe 'existance of triangle' do
    it 'should reject invalid triangle lengths' do
      expect(Triangle.new(1, 2, 10)).to raise_error
    end
  end
  it 'should be a triangle' do

  end
end
