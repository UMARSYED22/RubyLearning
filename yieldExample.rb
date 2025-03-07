def greet(x,y)
  puts "Hey!!"
  yield(x,y) if block_given? #by using yield control flow of the function will go to the block added with fucntion call the block will be executed and the 
  #normal execution proceed 
  puts "Byee!"
end

greet(1,3){|x,y| puts x+y}


def calculate(x,y)
  puts "Calculations Started.... #{x+y}"
  result=yield(20,20) if block_given?
  puts "Result is #{result}"
end

calculate(20,10){|x,y| x+y}
