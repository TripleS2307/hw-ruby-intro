# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each{|val| result+=val}
  return result
end

def max_2_sum arr
  sum_two_largest = 0
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  temp = arr.max(2)
  temp.each{|val| sum_two_largest+=val}
  return sum_two_largest
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  counter = arr.length
  return false if counter <=1
  for x in 0..counter 
    for y in x+1..counter
      return true if arr[x].to_i + arr[y].to_i == n
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end
  
def starts_with_consonant? s
  # YOUR CODE HERE
    return(/^[[:alpha:]]+$/.match(s) and not /^[aeiouAEIOU]{1}/.match(s))
end

def binary_multiple_of_4? s
  len = /^[01]+$/.match(s)
  return false if len == nil
  count = 0
  val = s.to_i
  sum = 0
  while val > 0
    sum = sum + (2**count)*(val%10)
    val = val/10
    count+=1
  end
  return(sum %4 == 0)  
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn,price)
    raise ArgumentError, "ISBN number is empty" unless isbn.length > 0
    raise ArgumentError, "Price is less than zero" unless price > 0
    @isbn = isbn
    @price = price.to_f
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    raise ArgumentError, "ISBN number is empty" unless isbn.length > 0
    @isbn = isbn 
  end
  def price=(price)
    raise ArgumentError, "Price is less than zero" unless price > 0
    @price = price.to_f 
  end
  def price_as_string()
    p = "%.2f" % price.to_s
    return "$".concat(p)
  end
end