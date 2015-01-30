require 'spec_helper'

describe Square do


  let(:square1) { Square.new(3) }


  it 'calculates area of square' do
    expect(square1.area).to eq 9
  end

  it 'calculates perimeter of square' do
    expect(square1.perimeter).to eq 12
  end



end