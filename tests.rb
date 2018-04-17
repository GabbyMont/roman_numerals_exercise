require 'minitest/autorun'
require_relative 'roman_function.rb'

class Roman_Numerals_test < Minitest::Test
	def test_true_is_true
		assert_equal(true,true)
	end

	def test_I_is_1
		assert_equal("I",roman_numerals(1))
	end

	def test_IV_is_4
		assert_equal("IV",roman_numerals(4))
	end
end