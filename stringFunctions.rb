 str="umar"
puts str.reverse
puts str.length

# ""Jimmy" * 5 #Syntax Error
# puts 40.reverse #Sytax error

puts 40.to_s.reverse

# to_s converts things to strings
# to_i converts things to integers (numbers)
# to_a converts things to arrays

str1="My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley comet,
More still did I want to eat it."
str2=str1.gsub("toast","butter") #replace all occurences of toast with butter does not modify original string create another and return
# puts str2

puts str1.lines.reverse #reverse by lines

 l=["Umar","sahil","amin"]
# l="umar,
# imam,
# sahil"
joinStr= l.join(" ")# used to convert array to string
puts joinStr
str3=joinStr.downcase
puts str3
puts str3.upcase
