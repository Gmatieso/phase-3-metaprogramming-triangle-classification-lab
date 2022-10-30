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
end
