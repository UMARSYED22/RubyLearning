my_proc=Proc.new{|x| puts "This is a proc with vale #{x}"}
my_proc.call(10)

my_proc=Proc.new{|x,y| puts x+y}
my_proc.call(1,2)

def func(x,y)
    puts x+y
end
func(10,20)


# Methods and lambdas enforce the number of arguments.Passsing Wrong number of arguments results in an Argument error
# Regular Procs: Do not enforce the number of arguments. Missing arguments default to nil, and extra arguments are ignored.

my_proc1=Proc.new{ |x,y|  (x.to_i-y.to_i) }
my_proc1.call(20,2,3)

# Lambdas

my_lambda=lambda {|x| puts "My Lambda is #{x}"}
my_lambda.call(5)

my_lambda1 = ->(x,y){x*y}
puts my_lambda1.call(5,5)


def func()
    proc=Proc.new{|x|  "Hello #{x}"} #if we write proc which returns something in a method so after calling prop the lines below the call will not execute.
    puts proc.call("umar")
    puts "Hello guyss!!!"
end

puts func()

def func1()
    lambda1 = ->(x){x+5} #if we write lambda which returns something in a method so after calling lambda the lines below the call will  execute.
    #this is the main difference between lambda and prop
    puts lambda1.call(5)
    puts "Hello"
end

func1()