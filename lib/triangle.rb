class Triangle
  attr_accessor :x, :y, :z, :equilateral, :isosceles, :scalene
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z 
  end
  
  def kind 
    if x == 0 || y == 0 || z == 0 
      raise TriangleError
      elsif x + y <= z || x + z <= y || y + z <= x 
      raise TriangleError
      elsif x == y && y == z 
      :equilateral
      elsif x == y && x != z || x == z && x != y || y == z && y != x 
      :isosceles
    else x != y && y != z 
      :scalene
    end
  end
  
class TriangleError < StandardError
    "This is not a valid triangle!"
end
  
end