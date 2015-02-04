#takes 2 or 1 parameter to find the area and perimeter

class Rectangle

    attr_reader :length, :breadth

    def initialize(length, breadth)
      @length = length
      @breadth = breadth
      
    end

    def self.new_square(side)
      self.new(side, side)
    end

    def area
      (@length * @breadth)
    end

    def perimeter
      2 * (@length + @breadth)
    end


end