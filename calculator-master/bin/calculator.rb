#!/Users/charupriya/.rvm/rubies/ruby-2.2.0/bin/ruby
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), "..", "lib/calculator_operations/")
require 'application'
require 'calculator'
require 'parser'
runner = Parser.new
runner.run