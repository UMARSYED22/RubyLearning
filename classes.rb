class Greeter
    attr_accessor :name
    def initialize(name="Imam")
        puts "Parent"
        @name=name
    end
    def self.abcd
        puts "class methods"
    end
    def sayHello
        puts "Hello #{@name}!"
    end
    def sayBye
        puts "Bye #{@name}!"
    end
end

greeter=Greeter.new("umar")
greeter.sayHello
# puts Greeter.instance_methods
puts Greeter.instance_methods(false)
Greeter.abcd
 puts greeter.name
greeter.name="faraz"
puts greeter.name



class Greet < Greeter
    def self.abcd
        super
        puts "Override"
    end
end

greet1=Greet.new()
greet1.sayHello