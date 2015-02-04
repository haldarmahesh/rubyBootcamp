require 'spec_helper'
describe 'Calculator' do

	before(:all) do
    @calculator1 = Calculator.new
  end

	it "add two values" do
		expect(@calculator1.add(5)).to eq(5.0)
	end

	it "multiply two values" do
		expect(@calculator1.multiply(3)).to eq(15.0)
	end

	it "subtract two values" do
		expect(@calculator1.subtract(5)).to eq(10.0)
	end

	it "divide two values" do
		expect(@calculator1.divide(5)).to eq(2.0)
	end

	it "cancel the values" do
		expect(@calculator1.cancel).to eq(0.0)
	end

	it "squaroots the value" do
		@calculator1.add(25.0)
		expect(@calculator1.sqrt).to eq(5.0)
	end

	it "squares the value" do
				
		expect(@calculator1.sqr).to eq(25.0)
	end

	it "cuberoots the value" do
		@calculator1.cancel
		@calculator1.add(8.0)
		expect(@calculator1.cubert).to eq(2.0)
	end

	it "cubes the value" do
		@calculator1.cancel

		@calculator1.add(2.0)
		expect(@calculator1.cube).to eq(8.0)
	end

	it "absolutes the value " do
		@calculator1.cancel
		
		@calculator1.add(-25)		
		expect(@calculator1.abs).to eq(25.0)
	end

	it "negates the value" do
		@calculator1.cancel
		
		@calculator1.add(25.0)

		expect(@calculator1.neg).to eq(-25.0)
	end

end