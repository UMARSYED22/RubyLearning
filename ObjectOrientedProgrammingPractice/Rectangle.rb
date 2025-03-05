class Rectangle
    def initialize(width,height)
        @height=height
        @width=width
    end
    def calArea
        return @height*@width
    end
end

rec=Rectangle.new(4,5)
puts "Area of Rectangle is : #{rec.calArea}"
