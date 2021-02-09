# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  n = 0
  array.each{ |x| n+=x }
  return n
end

def max_2_sum(array)
  if array.length == 0
	return 0;
  elsif array.length == 1
	return array.first
  else 
	return array.sort[-2] + array.sort[-1]
  end
end

def sum_to_n? (array, n)
  if array.length <= 1
	return false
  end
  for i in 0..(array.length-1)
	for j in 0..(array.length-1)
		if i!=j and array.at(i)+array.at(j) == n
			return true
		end
	end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+ name
end

def starts_with_consonant?(s)
  if s.length == 0
	return false
  elsif s.start_with? '#' or s.start_with? 'a' or s.start_with? 'A' or s.start_with? 'e' or s.start_with? 'E' or s.start_with? 'i' or s.start_with? 'I' or s.start_with? 'o' or s.start_with? 'O' or s.start_with? 'u' or s.start_with? 'U'
	return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s.eql? "0"
    return true
  elsif s.length < 3
	return false	
  elsif s.count("a-zA-Z") > 0
	return false
  elsif s[s.length-1].eql? "0" and s[s.length-2].eql? "0"
	if s["1"] != nil
	  return true
	end
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
	raise ArgumentError.new(
		"Invalid ISBN"
	) if isbn.length < 1
	raise ArgumentError.new(
		"Invalid price"
	) if price <= 0
	@isbn = isbn
	@price = price
	
  end
  
  def isbn
	@isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
	@price = price
  end
  
  def price_as_string
    price_s = price.to_s
	if(price_s["."] == nil)
		price_s+=".00"
	elsif(price_s.index(".") == price_s.length-2)
		price_s+="0"
	end
	return "$" << price_s
  end
end
