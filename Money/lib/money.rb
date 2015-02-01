#this class takes the money and express in combination of Rupees, paise or a combination thereof
#and adds the value of money

class Money

  attr_reader :paise

  def initialize(paise)
    @paise = paise
    
  end
  
  def self.rupee_paise(rupees, paise)
    @paise = rupees * 100 + paise
    self.new(@paise)
  end

  def +(othermoney)
    @paise += othermoney.paise
    return self
  end

  def express_money()
    return "#{@paise / 100} rupees #{@paise % 100} paise"
  end

end
