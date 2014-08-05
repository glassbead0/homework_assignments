require './lib/shape'
# the dodecagon class inherits from the shape class
class Dodecagon < Shape
  def initialize(side_length)
    @side_length = side_length
  end

  def perimeter
    @side_length * 12
  end
end
