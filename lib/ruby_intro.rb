# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)

	sum = 0
	
	if arr.length == 0
		return 0
	else
		arr.each do |item| 
			sum += item 
		end
	end
	
	return sum

end

def max_2_sum (arr)

  	sum = 0
	
	if arr.length == 0
		return 0
	elsif arr.length == 1
		return arr[0]
	else
		arr.sort!{|x,y| y <=> x }
		sum += arr[0]
		sum += arr[1]
		
	end
	
	return sum
end

def sum_to_n? (arr, n)
	if arr.length == 0
		return false
	end
	result = arr.combination(2).any? {|a, b| (a + b == n) }
	return result

  
  
  
  
end

# Part 2

def hello(name)
	result = "Hello, " + name
	return result
end

def starts_with_consonant? (s)
	s = s.downcase
	if s == ''
		return false
	end
	array =  ['a', 'e', 'i', 'o', 'u']
	
	if array.include? s[0] 
		return false
	end 
	
	if not s[0].match(/^[[:alpha:]]+$/)
		return false
	end
	
	return true
	
  
end

def binary_multiple_of_4? (s)
	if not s.match(/^[[:digit:]]+$/)
		return false
	end
	
	sum = 0
	
	places = s.length
	
	
	
	s.split("").each do |i|
		if i == "1"
			sum += (2**places)
		end
		places -= 1
	end
		
	if sum % 4 == 0
		return true
	else
		return false
	end

end

# Part 3

class BookInStock	

	def initialize (isbn, price)
		if isbn == '' or (price <= 0)
			raise ArgumentError.new("Arguments are wrong")
		end
		@isbn = isbn
		@price = price
	
	
	end
	
	#getter
	def isbn
		@isbn
	end
	
	# setter
	def isbn=(new_isbn)
		@isbn = new_isbn
	end

	
		#getter
	def price
		@price
	end
	
	# setter
	def price=(new_price)
		@price = new_price
	end

	
	def price_as_string
		float = @price.to_f
		rounded = '%.2f' % float
		return "$" + rounded
	end







end
