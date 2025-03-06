
# While Loop runs till condition is true
i=10
while i>5
    puts "i = #{i}"
    i-=1
end

# Until loop runs as long as condition is false
k=0
until k>=5
    puts "k = #{k}"
    k+=1
end

#for loop traverse on elements in collection
for i in 0..6
    puts "i = #{i}"
end

x=[1,2,3,4,5,6,7]
for i in x
    puts "x = #{i}"
end


# times loop The times loop executes a block of code a specified number of times.
5.times do |x|
    puts x
end

[1, 2, 3, 4, 5].each do |num|
    puts "Number: #{num}"
  end

# each loop The each loop iterates over elements of a collection, such as an array or hash.
[1,2,3,4,5,6].each do |num|
    puts num
end
