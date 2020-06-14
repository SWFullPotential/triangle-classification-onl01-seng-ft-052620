
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
  def initialize(s1, s2, s3)
    @s1 = s1.to_i
    @s2 = s2.to_i
    @s3 = s3.to_i
  end

  def type_test
    if @s1 >= @s2 + @s3 || @s2 >= @s1 + @s3 || @s3 >= @s2 + @s1
      return "Not a triangle!"
    elsif @s1 == @s2 && @s1 == @s3
      return "equilateral"
    elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
      return "isosceles"
    else
      return "scalene"
    end
  end

  def list_sides
    "#{@s1}, #{@s2}, #{@s3}"
  end
end
