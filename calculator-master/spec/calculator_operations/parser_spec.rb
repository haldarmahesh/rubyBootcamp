require 'spec_helper'
describe 'Parser' do

	let(:parser) { Parser.new }

	it "check add" do
		expect(parser.split_command("add 5")).to eq(5.0)
	end

	it "check multiply" do
		parser.split_command("add 5")
		expect(parser.split_command("multiply 3")).to eq(15.0)
	end

	it "check divide" do
		parser.split_command("add 5")
		parser.split_command("multiply 3")
		expect(parser.split_command("divide 3")).to eq(5.0)
	end		
		
	it "check subtract" do
		parser.split_command("add 5")
		parser.split_command("multiply 3")
		parser.split_command("divide 3")
		expect(parser.split_command("subtract 3")).to eq(2.0)
	end	
	
	it "refresh the value" do
		parser.split_command("add 5")
		parser.split_command("multiply 3")
		parser.split_command("divide 3")
		parser.split_command("subtract 3")
		expect(parser.split_command("cancel")).to eq(0.0)
	end

	it 'squareroots value' do
		parser.split_command("add 25")
		expect(parser.split_command("sqrt")).to eq(5.0)
	end

	it 'squares value' do
		parser.split_command("add 5")
		expect(parser.split_command("sqr")).to eq(25.0)
	end

	it 'cuberoots value' do
		parser.split_command("add 8")
		expect(parser.split_command("cubert")).to eq(2.0)
	end

	it 'cubes value' do
		parser.split_command("add 2")
		expect(parser.split_command("cube")).to eq(8.0)
	end
	it 'negates value' do
		parser.split_command("add 25")
		expect(parser.split_command("neg")).to eq(-25.0)
	end

	it 'absolutes value' do
		parser.split_command("add -5")
		expect(parser.split_command("abs")).to eq(5.0)
	end

end

