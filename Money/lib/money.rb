#this class takes the money and express in combination of Rupees, paise or a combination thereof
#and adds the value of money

class Money

  attr_reader :paise, :rupees

  def initialize(rupees, paise)
    @paise = rupees * 100 + paise
    @rupees = 0 
  end
  
  def +(othermoney)
    # return @paise += othermoney.paise
    yy=Money.new(0, @paise + othermoney.paise)
    yy.paise
  end

  def express_money(money)
    # puts "hey yas "
    puts "mahesh #{money}"
    # puts money
    # return "#{money.paise / 100} rupees #{money.paise % 100} paise"
  end

end
