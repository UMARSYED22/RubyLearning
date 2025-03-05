class Person
    attr_accessor :name
    attr_accessor :age
    def initialize(name,age)
        @name=name
        @age=age
    end
end
person=Person.new("umar",23)
person1=Person.new("amin",25)
puts "Name od person is #{person.name}!"
puts "Name od person is #{person.age}!"
puts "Name od person is #{person1.name}!"
puts "Name od person is #{person1.age}!"
puts Person.instance_methods()
