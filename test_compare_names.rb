require "minitest/autorun"
require_relative "compare_names.rb"

class Name_tests <Minitest::Test
	def test_one_equals_one
		assert_equal(1,1)
	end

	def test_program_returns_array
		assert_equal(Array,shuffle_names(["George","Joe","Bob","Timmy","Louis"]).class)
	end

	def test_program_returns_correct_number_of_elements
		assert_equal(8,shuffle_names(["Katie Collins","Aaron Camersi","Derrick Gillispie","Andrew Farley","Adrian Sauls","John Murphy","Steven Miller","Victoria Frame","Stephanie Frame","Chris Phelps","Derick West","Ty Cook","Robert Caldwell","Marcus Folks","Tyler Richards","Mike Handy"]).count)
	end

	def test_first_array_contains_two_elements
		assert_equal(2,shuffle_names(["Katie Collins","Aaron Camersi","Derrick Gillispie","Andrew Farley","Adrian Sauls","John Murphy","Steven Miller","Victoria Frame","Stephanie Frame","Chris Phelps","Derick West","Ty Cook","Robert Caldwell","Marcus Folks","Tyler Richards","Mike Handy"])[0].count)
	end

	def test_last_array_contains_three_elements_with_added_rando
		assert_equal(3,shuffle_names(["Katie Collins","Aaron Camersi","Derrick Gillispie","Andrew Farley","Adrian Sauls","John Murphy","Steven Miller","Victoria Frame","Stephanie Frame","Chris Phelps","Derick West","Ty Cook","Robert Caldwell","Marcus Folks","Tyler Richards","Mike Handy", "Random Odd Person"])[7].count)
	end
end