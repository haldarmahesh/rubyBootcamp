require 'spec_helper'

describe Money do


  let(:money1) {Money.new(0, 10)}
  let(:money2) {Money.new(78, 0)}
  let(:money3) {Money.new(13, 7008)}
  let(:money4) {Money.new(0, 1050)}



  # it 'adds two money' do
  #   expect(express_money(7810)).to eq "78 rupees 10 paise"
  # end

  it "adds two money; rupees and when paise > 100" do
    expect(money1 + money3).to eq 8318
  end

  it "adds two money with paise > 100" do
    expect(money2 + money4).to eq 8850
  end

 
  # it "show the money" do
  #   expect((money1 + money4).express_money).to eq "88 rupees 50 paise"
  # end

  
end