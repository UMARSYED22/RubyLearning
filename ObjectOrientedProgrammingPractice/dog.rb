class Dog
    
    attr_accessor :name,:breed

    # def initialize(name,breed)
    #     @name=name
    #     @breed=breed
    # end
endk

# dog=Dog.new("tommy","labrador")
dog=Dog.new()
dog.name="tommy"

puts "Dog name is #{dog.name} and breed is #{dog.breed}"