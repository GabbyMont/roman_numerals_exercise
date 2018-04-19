# Function created to help break down division of number tested with keys in roman_hash
def divide(x,y)
	x / y
end

# Function created to help break down multiplication of the roman numeral and divided number(from dividing the key and number being tested)
def mult(x,y)
	x * y
end

# Function created to help break down the divisibility of the number to be converted and the keys in the roman hash
def num_converter_update(num_to_convert,key)
	num_to_convert % key
end

def roman_numerals(num_to_convert) # Parameter(num_to_convert) is number first tested but later redefined
roman_hash = {
	1000 => "M",  
    900 => "CM",  
    500 => "D",  
    400 => "CD",
    100 => "C",  
    90 => "XC",  
    50 => "L",  
    40 => "XL",  
    10 => "X",  
    9 => "IX",  
    5 => "V",  
    4 => "IV", 
	1 => "I"
}

	# Fixnum is class of the number to be converted( Just a number (does not include floats/numbers with decimals))
	if num_to_convert.class == Fixnum
		# Creating empty string to later push the multiplied number in
		roman = ""
		# Each do loop to iterate over roman hash
		roman_hash.each do |key,letter| # Key(number in hash/key) , Letter(the roman numeral/value)
			# variable = function name(numbers to... , ...be divided)
			return_of_div = divide(num_to_convert,key)
			# The string of roman numerals multiplied by divided number. // If not number tested then will return zero. Ex) (# is 10 in this case) Will iterate through hash keys and returns 0 if the # is not 10
			mult_str = mult(letter,return_of_div)
			# Multiplied string pushed into roman string
			roman << mult_str
			# Num_to_convert redefined as remainder from converted/tested number and key(number) in roman hash
			num_to_convert = num_converter_update(num_to_convert,key)
			# roman << letter*(num_to_convert/key) ^^^^ broken down with individual functions and mulitple lines
			# n = n % key(number)
		end
			roman
	else # This else statement was going to be used to seperate two letter numerals then reverse the order. Ex) 4 => "IV" would be read as 4 instead of 6 => "VI"
		# New array to put seperated numeral strings. Ex) ["I", "I"]
		new_array = []
		# counter
		roman = 0
		# This is where the single string of numerals was split into multiple strings. 2 is "II" => Now 2 is ["I", "I"] or two ones
		array = num_to_convert.split(//)
		# Iterates over new array of multiple strings after single string split
		array.each do |item|
			# Adds keys from roman hash
			roman += roman_hash.key(item)
		end
	end
roman
end