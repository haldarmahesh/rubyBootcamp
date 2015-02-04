#It takes commands and invoke the calculator
class Parser

	def initialize
		@calculator = Calculator.new
	end

	def split_command(cmd)
		operation, operand = cmd.split(' ')
		case operation
			when "add"
				@calculator.add(operand)
			when "subtract"
				@calculator.subtract(operand)
			when "multiply"
				@calculator.multiply(operand)
			when "divide"
				@calculator.divide(operand)
			when "cubert"
				@calculator.cubert
			when "cube"
				@calculator.cube
			when "sqr"
				@calculator.sqr
			when "sqrt"
				@calculator.sqrt
			when "neg"
				@calculator.neg
			when "abs"
				@calculator.abs
			when "cancel"
				@calculator.cancel
		end
	end
end