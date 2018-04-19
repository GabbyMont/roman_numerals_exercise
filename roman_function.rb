def divide(x,y)
	x/y
end

def mult(a,b)
	a*b
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
		# p " this is letter #{letter}"
		# p "this is key #{key}"
		# p " this is the number converted #{num_to_convert}"
		return_of_div = divide(num_to_convert,key)
		# p "Div return #{return_of_div}"
		mult_str = mult(letter,return_of_div)
		roman << mult_str
			# roman << letter*(num_to_convert/key)
			num_to_convert = num_to_convert % key
		# p " Roman #{roman}"
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