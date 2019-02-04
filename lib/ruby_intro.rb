# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each{|i| s+=i}
  return s
end

def max_2_sum arr
  if arr.length==0
    return 0
  elsif arr.length==1
    return arr[0]
  else
    sorted=arr.sort
    max=sorted[-1]
    max2=sorted[-2]
    return max+max2
  end
end

def sum_to_n? arr, n
  if arr.length==0||arr.length==1
    return false
  else
    for i in 0...arr.length do
      for j in i+1...arr.length do
        if arr[i]+arr[j]==n
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  c1=/[[:alpha:]]/ =~s
  c2=/[^aeiouAEIOU]/ =~s
  if c1==0 && c2==0
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  for i in 0..s.length-1
    if(s[i]!="0")&&(s[i]!="1")
      return false
    end
  end
  if (s=="0")||(s[-1]=="0"&&s[-2]=="0")
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor:isbn
  attr_accessor:price
  def initialize(isbn,price)
    @isbn=isbn
    @price=price
    if isbn.length==0||price<=0
      raise ArgumentError
    end
  end
  
  def price_as_string()
    return "$#{'%.02f' % price}"
  end
end
