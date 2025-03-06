module Drivable
  def start_engine
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def drive
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Car
  include Drivable

  def start_engine
    puts "Engine started!"
  end

  # def drive
  #   puts "Car is driving!"
  # end
end

class Bicycle
  include Drivable

  def start_engine
    puts "Bicycles don't have engines!"
  end

  def drive
    puts "Bicycle is pedaling!"
  end
end

car = Car.new
car.start_engine  # Output: Engine started!


begin   # it works as  a tryy block 
  car.drive
rescue NotImplementedError => e   #it works as a catch block
  puts "hello brother"
ensure
  puts "Finally"
end

        # Output: Car is driving!

bicycle = Bicycle.new
bicycle.start_engine  # Output: Bicycles don't have engines!
bicycle.drive         # Output: Bicycle is pedaling!