class Triangle
  
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if ((a && b && c) > 0) && (a + b > c) && (a + c > b) && (b + c > a)
      if ((a == b) && (a == c) && (b == c))
        :equilateral
      elsif ((a == b) || (a == c) || (b == c))
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
