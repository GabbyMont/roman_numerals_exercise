def divide(x,y)
	x / y
end

def mult(x,y)
	x * y
end

def num_converter_update(num_to_convert,key)
	num_to_convert % key
end

def roman_numerals(num_to_convert)
roman_hash = {
	# 1000 => "M",  
 #    900 => "CM",  
 #    500 => "D",  
 #    400 => "CD",
 #    100 => "C",  
 #    90 => "XC",  
 #    50 => "L",  
 #    40 => "XL",  
 #    10 => "X",  
 #    9 => "IX",  
    5 => "V",  
    4 => "IV", 
	1 => "I"
}
	if num_to_convert.class == Fixnum
		roman = ""
		roman_hash.each do |key,letter| 
		return_of_div = divide(num_to_convert,key)
		mult_str = mult(letter,return_of_div)
		roman << mult_str
		num_to_convert = num_converter_update(num_to_convert,key)
		# roman << letter*(num_to_convert/key) ^^^^ broken down
		end
			roman
	else
		new_array = []
		roman = 0
		array = num_to_convert.split(//)
		array.each do |item|
			roman += roman_hash.key(item)
		end
	end
roman
end