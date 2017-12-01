class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end
end

  def validate_triangle
    
  end

class TriangleError < StandardError
  if @a || @b || @c == 0
    raise TriangleError
  end
end
