#It provides functionality of addition, subtraction, division, and multiplication
class Calculator
	
	def initialize
		@result = 0.0
	end

	def add(value)
		@result = @result + value.to_f
	end

	def subtract(value)
		@result = @result - value.to_f
	end

	def divide(value)
		@result = @result / value.to_f
	end

	def multiply(value)
		@result = @result * value.to_f
	end

	def cubert
		
		@result = Math.cbrt(@result) 
	end

	def cube
		@result = @result ** 3
	end

	def sqrt
		
		@result = Math.sqrt(@result)

	end

	def sqr
		@result = @result ** 2
	end

	def neg
		@result =-@result
	end

	def abs
		@result = @result.abs
	end

	def cancel
		@result = 0.0
	end

end