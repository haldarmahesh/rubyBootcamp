require 'spec_helper'

describe Money do
  let( :money1) { Money.new(0) }
  let( :money2) { Money.new(1200) }
  let( :money3) { Money.new(13) }
  let( :money4) { Money.rupee_paise(12,1000) }
  let( :money5) { Money.new(1200)}

  it "adds two money; rupees and when paise > 100" do
    expect((money1 + money3).paise).to eq 13
  end

  it "adds two money with paise > 100" do
    expect((money2 + money5).paise).to eq 2400
  end

 
  it "show the money" do
    expect( (money1 + money4 + money3).express_money).to eq "22 rupees 13 paise"
  end
end