require 'spec_helper'

describe Rectangle do


	let(:rectangle1) { Rectangle.new(3, 4) }


  it 'calculates area of rectangle' do
    expect(rectangle1.area).to eq 12
  end



end