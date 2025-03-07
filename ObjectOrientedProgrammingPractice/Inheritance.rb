class Vehicle
  def initialize(make, model)
    @make = make
    @model = model
  end

  def details
    "Make: #{@make}, Model: #{@model}"
  end
end

class Car < Vehicle
  def initialize(make, model, doors)
    super(make, model)
    @doors = doors
  end

  def car_details
    "#{details}, Doors: #{@doors}"
  end
end

car = Car.new("Toyota", "Corolla", 4)
puts car.car_details  # Output: Make: Toyota, Model: Corolla, Doors: 4