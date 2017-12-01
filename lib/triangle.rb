class Triangle
  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene
  def initialize(a, b, c)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 || @side2 | @side3 == 0
      raise TriangleError
    end
    if @side1 == @side2 && @side3
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
