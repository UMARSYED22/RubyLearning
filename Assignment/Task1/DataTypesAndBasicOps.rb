#Data Types and Basic Operations (10 points)
# Write a Ruby script that demonstrates the use of different data types: integers, floats, strings, symbols, and booleans.
# Perform basic arithmetic operations and string concatenations.
# Example: Calculate the area of a circle given its radius.

physics=80.0
chemistry=65.0
biology=50.0
marksObtained=physics+chemistry+biology
puts "marks Obtained by student is: #{marksObtained.to_i}" #addtion of marks using integer data type

#calculate percentage of student as we know percentage can be a decimal number we can use float.
totalMarks=300.0
percentage=(marksObtained/totalMarks)*100
puts "Percentage of Student is: #{percentage}"

#string in ruby
String s=String.new("sahil")
String s1=String.new("sahil")
puts s==s1 #returns true beacuse it checks only data in a string
firstName="Syed"
lastName="Umar"
puts firstName+lastName
puts (firstName+lastName).upcase
puts firstName==lastName #returns false
puts firstName.object_id==lastName.object_id #false because it checks object id

#symbols in Ruby
email= :syedu337
email2= :syedu337
email3= :hello
# email=email+email2 #cannot be modified because immutable
puts email.object_id
puts email2.object_id
puts email==email2
puts email.object_id==email2.object_id #returns true beacuse points to same object hence memory effiecient.
puts email.object_id==email3.object_id #returns false

#booleans in ruby
def check(flag)
  if flag
    puts "flag is true"
  else
    puts "flag is false"
  end
end
check(true)#returns true
check(false)#retuens false

#calculate area of circle when radius is given
def areaOfCircle(radius)
  area=3.14*(radius*radius) 
end

puts areaOfCircle(5)
