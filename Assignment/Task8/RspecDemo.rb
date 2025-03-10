# RSpec Testing (20 points)
# Write RSpec tests for the methods you have created in the previous tasks.
# Ensure that your tests cover various edge cases and scenarios.
# Example: Test the string capitalization method with different inputs.

require "rspec"
def capitalize(str)
  return str.upcase
end




#Sort
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
  return arr
end

#Rspec for testing different inputs
RSpec.describe "#capitalize" do
  it "returns SYED UMAR for syed umar" do
    expect(capitalize("syed umar")).to eq("SYED UMAR")
    end
    it "returns HELLO for hello" do
      expect(capitalize("hello")).to eq("HELLO")
    end
  end

  RSpec.describe "#bubbleSort" do
    it "returns [1,2,3,3,4,4,5,6,6,8,9] for [2,4,3,6,1,5,8,3,6,4,9]" do
      expect(bubbleSort([2,4,3,6,1,5,8,3,6,4,9])).to eq([1,2,3,3,4,4,5,6,6,8,9])
    end
    it "returns [1,2,3,4] for [4,2,3,1]" do
      expect(bubbleSort([4,2,3,1])).to eq([1,2,3,4])
    end
    it "returns [] for []" do
      expect(bubbleSort([])).to eq([])
    end
  end

