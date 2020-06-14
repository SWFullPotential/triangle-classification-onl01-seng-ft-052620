
# class Triangle
# 	attr_accessor = :kind
	
# 	def initialize(side1, side2, side3)

# 		if side1 <= 0 || side2 <= 0 || side3 <= 0
# 			raise TriangleError
# 		end
# 		if side1 + side2 <= side3 || side2 + side3 <= side1 || side3 + side1 <= side2
# 			raise TriangleError
# 		end
		
# 		if side1 == side2 && side2 == side3
# 			@kind = :equilateral
# 		elsif side1 ==side2 || side2 == side3 || side1 == side3
# 			@kind = :isosceles
# 		else
# 			@kind = :scalene
# 		end
# 		end

# 		end
# class TriangleError < StandardError
# 	def message
# 		"Thats not a triangle!" 
# 		end
# 		end


class Triangle

@tri_array = []

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def valid_triangle
    @tri_array = [@side1, @side2, @side3].sort!
    if @tri_array[2] > (@tri_array[0] + @tri_array[1])
      @tri_array.to_s + ": is not a Triangle"
    elsif @tri_array[2] == @tri_array[0]
      @tri_array.to_s + ": is an Equilateral Triangle"
    elsif @tri_array[1] == @tri_array[0]
      @tri_array.to_s + ": is an Isosceles Triangle"
    else
      @tri_array.to_s + ": is a Scalene Triangle"
    end
  end
end
testTriangle = Triangle.new(1,1,3)
testTriangle.valid_triangle
