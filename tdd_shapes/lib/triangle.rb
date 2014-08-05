require './lib/shape'
# blah
class Triangle < Shape
  def initialize(a, b, c)
    params = [a, b, c]
    max = [a, b, c].max
    min = [a, b, c].min


    @side1 = a
    @side2 = b
    @side3 = c
  end
end
