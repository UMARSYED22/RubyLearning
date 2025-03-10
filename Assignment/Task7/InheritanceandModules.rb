# Inheritance and Modules (20 points)
# Create a class Vehicle with attributes like make, model, and year.
# Create a subclass Car that inherits from Vehicle and adds an attribute number_of_doors.
# Create a module Electric with a method charge_battery.
# Include the Electric module in the Car class and demonstrate its use.

class Vehicle
  def initialize(make,model,year)
    @make=make
    @model=model
    @year=year
  end
  def display
    puts "Company= #{@make}, Model= #{@model}, Year= #{@year}"
  end
end




class Car < Vehicle
  
  def initialize(make,model,year,number_of_doors)
    super(make,model,year) # use to pass arguments to base calss constructor
    @number_of_doors=number_of_doors
  end
  def display
    puts "Company= #{@make}, Model= #{@model}, Year= #{@year}, number_of_doors= #{@number_of_doors}"
  end
  
end

v=Vehicle.new("Honda","Top",2024);
v.display


c=Car.new("Tata","Base",2025,4)
c.display




#module
module Electric 
  def charge_battery
   
  end
end 



class ElectricVehicle
  include Electric
  def charge_battery
    puts "Battery is charging"
  end
end
ev=ElectricVehicle.new
ev.charge_battery


