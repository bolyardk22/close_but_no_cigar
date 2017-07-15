require "minitest/autorun"
require_relative "cbnc.rb"

class Lotto_test <Minitest::Test

	def test_one_equals_one
		assert_equal(1,1)
	end

	def test_winning_num_in_lotto_returns_true
		assert_equal(true,lotto_func(["1232","9874","4789","7776","6054"],[1,2,3,4],4))
	end

	def test_losing_num_in_lotto_returns_false
		assert_equal(false,lotto_func(["1234","9874","4789","7776","6054"],[1,2,3,4],4))
	end

	def test_lucky_func_winner
		assert_equal("Congratulations, you're a winner!",lucky(true))
	end

	def test_lucky_func_loser
		assert_equal("Sorry, you lost this time.",lucky(false),4)
	end

	def test_both_work_winner
		assert_equal("Congratulations, you're a winner!",lucky(lotto_func(["1232","9874","4789","7776","6054","1232"],[1,2,3,4],4)))
	end

	def test_winning_numbers_array
		assert_equal(Array,winning_numbers(4).class)
	end

	def test_winning_numbers_five
		assert_equal(5,length_of_ticket("15589"))
	end

	def test_split_ticket_works
		assert_equal(4,split_ticket_into_array("1234").count)
		assert_equal(Array,split_ticket_into_array("1234").class)
	end

end