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
