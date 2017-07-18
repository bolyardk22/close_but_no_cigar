require "minitest/autorun"
require_relative "stringcomparison.rb"

class String_test <Minitest::Test

	def test_one_equals_one
		assert_equal(1,1)
	end

	def test_pizza_equals_pizza_5
		assert_equal(5,match?("pizza","pizza"))
	end

	def test_pizza_equals_puzza_4
		assert_equal(4,match?("pizza","puzza"))
	end

	def test_abcd_equals_efgh_0
		assert_equal(0,match?("abcd","efgh"))
	end

end