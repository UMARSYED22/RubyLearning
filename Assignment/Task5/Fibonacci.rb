# Loops (10 points)
# Write a script that prints the first 10 Fibonacci numbers using a loop.
# Use both while and for loops to achieve this.

#using for loop
def fibo
  first=0
  second=1
  p first,second
  for i in 3...11
    n=first+second
    first=second
    second=n
    p n
  end
end
fibo

#using while loop
def fibo2
  first=0
  second=1
  p first,second
  x=3
  while x<11
    n=first+second
    first=second
    second=n
    p n
    x+=1
  end
end
fibo2
