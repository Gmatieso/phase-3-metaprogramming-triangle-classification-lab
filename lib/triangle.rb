class Triangle
  # write code here
  #accessor macro
  attr_reader :a, :b, :c
  #method initialization
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  #instance method definition
  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  #instance method definition 
  def not_zero?
    [a, b, c].all?(&:positive?)
  end

  def triangle_inequality?
    a + b > c && a + c > b && b + c > a
  end

  def validate_triangle
    raise TriangleError unless not_zero? && triangle_inequality?
  end
  
  class TriangleError < StandardError
  end
end
