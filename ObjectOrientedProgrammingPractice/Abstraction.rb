class Car
  def start
    ignite_engine
    puts "Car started"
  end

  private

  def ignite_engine
    puts "Engine ignited"
  end
end

car = Car.new
car.start  # Output: Engine ignited
           #         Car started