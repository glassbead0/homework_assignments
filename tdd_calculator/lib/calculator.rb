# this should do calculatorial things.
class Calculator
  def initialize
    @ans = nil
  end

  def addition(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    a.to_f / b
  end
end
