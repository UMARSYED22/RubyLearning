# Arrays and Array Methods (10 points)
# Create an array of integers and perform the following operations:
# Sort the array.
# Find the maximum and minimum values.
# Remove duplicates.
# Reverse the array.
# Use array methods to achieve these tasks.


arr=[2,4,3,6,1,5,8,3,6,4,9]

#sort an array
# in built method
# p arr.sort

#writing our own using bubble sort
def bubbleSort(arr)
  for i in 0...arr.length
    for j in 0...arr.length-i-1
      if arr[j]>arr[j+1]
        temp=arr[j]
        arr[j]=arr[j+1]
        arr[j+1]=temp
      end
    end
  end
end
bubbleSort(arr)
p arr


#find minimum and maximum in array
puts arr.min #in built function
puts arr.max #in built function


def findMinAndMax(arr)
  min=arr[0]
  max=arr[0]
  arr.each do |x|
    if x<min
      min=x
    end
    if x>max
      max=x
    end
  end
  return min,max
end
min,max=findMinAndMax(arr)
puts "Minimum= #{min} and maximum= #{max}"


#remove Duplicates
p arr.uniq #in built method
def removeDuplicates(arr)
  arr1=Array.new
  n=arr.length
  for i in 0...n
    if !arr1.include?(arr[i])
      arr1.push(arr[i])
    end
  end
  return arr1
end
p removeDuplicates(arr)



#reverse an array
p arr.reverse

def reverseArr(arr)
  si=0
  ei=arr.length-1
  while si <= ei
    temp=arr[si]
    arr[si]=arr[ei]
    arr[ei]=temp
    si+=1
    ei-=1
  end
end
reverseArr(arr)
p arr