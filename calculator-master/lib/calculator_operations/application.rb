# It takes command from condole and send them other file 
class Application

	def run
		cmd = Parser.new
		print "$ "
		input = gets.chomp
		while input != 'exit' do 
	    puts cmd.split_command(input)
	    print "$ "
	    input = gets.chomp
		end
	end

	def run_test
		cmd = Parser.new
		kernel = Kernel.gets.chomp
		cmd.split_command(kernel)
	end
end