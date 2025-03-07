# RSpec is probably the most widely used testing tool for Ruby. I think at one point in time it was the most-used Ruby gem in the world, and it might still be. It even supports Rails and other frameworks.
require 'rspec'

def factorial(n)
  if n==1
    return 1
  end
  return n*factorial(n-1)
end


#Unit Testing Code
RSpec.describe '#factorial' do
  it 'returns 1 for 0' do
    expect(factorial(0)).to eq(1)
  end

  it 'returns 1 for 1' do
    expect(factorial(1)).to eq(1)
  end

  it 'returns 2 for 2' do
    expect(factorial(2)).to eq(2)
  end

  it 'returns 6 for 3' do
    expect(factorial(3)).to eq(6)
  end

  it 'returns 24 for 4' do
    expect(factorial(4)).to eq(24)
  end

  it 'returns 120 for 5' do
    expect(factorial(5)).to eq(120)
  end
end