require 'spec_helper'

describe Rectangle do


	let(:rectangle1) { Rectangle.new(3, 4) }
  let(:rectangle2) {Rectangle.new_square(4)}


  it 'calculates area of rectangle' do
    expect(rectangle1.area).to eq 12
  end

  it 'calculates area of square' do
    expect(rectangle2.area).to eq 16
  end

  it 'calculates perimeter of square' do
    expect(rectangle2.perimeter).to eq 16
  end



end