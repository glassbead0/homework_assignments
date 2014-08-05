require './lib/Shape'
# the circle class
class Circle < Shape
  def initialize(radius)
    @radius = radius
    @pi = 3.14159265358979323846264338327950
  end

  def area
    @pi * @radius**2
  end

  def circumference
    2 * @pi * @radius
  end
end
