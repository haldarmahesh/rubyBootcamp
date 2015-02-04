require 'spec_helper'
describe "launch" do
	it "checks the run method of Command" do
		cmd = Parser.new
		allow(Parser).to receive(:new) { cmd }
		allow(Kernel).to receive(:gets) { "add 5" }
		expect(cmd).to receive(:split_command).with("add 5")

		ob = Application.new
		ob.run_test
	end
end