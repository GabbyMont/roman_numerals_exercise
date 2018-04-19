require 'minitest/autorun'
require_relative 'roman_function.rb'

class Roman_Numerals_test < Minitest::Test
	def test_true_is_true
		assert_equal(true,true)
	end

	def test_mult_4
		assert_equal(4,mult(2,2))
	end

	def test_mult_20
		assert_equal(20,mult(2,10))
	end

	def test_div_9
		assert_equal(3,divide(9,3))
	end

	def test_divide_8
		assert_equal(4,divide(8,2))
	end

	def test_IVIV_mult_2
		assert_equal("IVIV", mult("IV",2))
	end

	def test_IVIV_mult_3
		assert_equal("IVIVIV",mult("IV",3))
	end

	def test_divisibility_4
		assert_equal(0,num_converter_update(4,4))
	end

	def test_divisibility_12
		assert_equal(4,num_converter_update(12,8))
	end

	def test_I_is_1
		assert_equal("I",roman_numerals(1))
	end

	def test_IV_is_4
		assert_equal("IV",roman_numerals(4))
	end

	def test_II_is_2
		assert_equal(2,roman_numerals("II"))
	end

	# def test_XXXIII_is_33
	# 	assert_equal("XXXIII",roman_numerals(33))
	# end
end