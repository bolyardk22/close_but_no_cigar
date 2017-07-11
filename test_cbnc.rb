require "minitest/autorun"
require_relative "cbnc.rb"

class Lotto_test <Minitest::Test

	def test_one_equals_one
		assert_equal(1,1)
	end

	def test_winning_num_in_lotto_returns_true
		assert_equal(true,lotto_func("1232"))
	end

	def test_losing_num_in_lotto_returns_false
		assert_equal(false,lotto_func("8745"))
	end

	def test_lucky_func_winner
		assert_equal("Congratulations, you're a winner!",lucky(true))
	end

	def test_lucky_func_loser
		assert_equal("Sorry, you lost this time.",lucky(false))
	end

	def test_both_work_winner
		assert_equal("Congratulations, you're a winner!",lucky(lotto_func("5242")))
	end
	
end