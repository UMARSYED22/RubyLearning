require 'rspec'

arr=[1,2,3,4,5,6]

def findMax(arr)
  max=arr[0]
  arr.each do |x|
    if x>max
      max=x
    end
  end
  return max
end

def concat(s1,s2)
  s1+s2
end
  



RSpec.describe "#findMax" do
  it "returns 6 for [1,2,3,4,5,6]" do
    expect(findMax(arr)).to eq(6)
  end
  it "returns 7 for [2,3,1,4,5,6,4,7]" do
    expect(findMax([2,3,1,4,5,6,4,7])).to eq(7)
  end

end

RSpec.describe "#concat" do
  it "returns syedumar for syed,umar" do
    expect(concat("syed","umar")).to eq("syedumar")
  end
end
