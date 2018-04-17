def roman_numerals(n)
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
	if n.class == Fixnum
		roman = ""
		roman_hash.each do |value,letter|
			roman << letter*(n/value)
			n = n % value
		end
			roman
	else

	roman = ""
	new_array = []
	roman_convert = 0
	array = n.split(//)
		array.each do |item|
			roman_convert += roman_hash.key(item)
		p "#{roman_convert}"
		end
	end
return roman_convert
end