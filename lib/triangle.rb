class Triangle
  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene
  def initialize(side1, side2, side3)
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
    elsif @side1 == @side2 || @side3
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
