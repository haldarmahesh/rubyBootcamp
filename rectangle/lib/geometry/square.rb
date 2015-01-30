#takes side and finds area and perimeter
class Square

    attr_reader :side

    def initialize(side)
        @side = side
    end

    def area
        (side * side)
    end

    def perimeter
      (4 * side) 
    end
    
end