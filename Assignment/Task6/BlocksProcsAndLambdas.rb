# Blocks, Procs, and Lambdas (10 points)
# Write a method that takes a block and calls it.
# Create a proc and a lambda that each take two numbers and return their sum.
# Demonstrate the differences between blocks, procs, and lambdas.

def func
  p "hello"
  yield if block_given?
  puts "Bye!!!"
end

func{puts "umar"}

#Proc
proc =Proc.new{|x,y|x+y}
p proc.call(3,4)


#Lamdas
lambda1=->(x,y) {x+y}
p lambda1.call(10,5)

lambda2= lambda {|x,y|x-y}
p lambda2.call(10,5)

#difference between proc and lambdas

def demo(proc)
  proc=Proc.new{|x,y|return x*y}
  puts proc.call(4,3)
  puts"Hello"#this will not print because of proc the contraol will go out of the function
end

demo(proc)

def demo1(h)
  lambda=->(x,y){return x/y}
  p lambda.call(10,2)
  p "hello" #this will  print because of lambda.this is the difference between procs and lambdas

end
demo1(lambda2)