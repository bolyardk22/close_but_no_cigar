require "minitest/autorun"
require_relative "cbnc.rb"

class Lotto_test <Minitest::Test

	def test_one_equals_one
		assert_equal(1,1)
	end

	def test_winning_num_in_lotto_returns_almost
		assert_equal("almost",lotto_func(["1232","9874","4789","7776","6054"],[1,2,3,4],4))
	end

	def test_losing_num_in_lotto_returns_true
		assert_equal("youwin",lotto_func(["1234","9874","4789","7776","6054"],[1,2,3,4],4))
	end

	def test_lucky_func_winner
		assert_equal("Congratulations, you're a winner!",lucky("youwin"))
	end

	def test_lucky_func_loser
		assert_equal("Sorry, you lost this time.",lucky("youlose"),4)
	end

	def test_lucky_with_lotto_func_winner
		assert_equal("Congratulations, you're a winner!",lucky(lotto_func(["1234","9874","4789","7776","6054","1232"],[1,2,3,4],4)))
	end

	def test_lucky_with_lotto_func_loser
		assert_equal("Sorry, you lost this time.",lucky(lotto_func(["1267","9874","4789","7776","6054"],[1,2,3,4],4)))
	end

	def test_winning_numbers_array
		assert_equal(Array,winning_numbers(4).class)
	end

	def test_length_of_ticket
		assert_equal(4,length_of_ticket("1234"))
		assert_equal(5,length_of_ticket("15589"))
		assert_equal(18,length_of_ticket("123456789987654321"))
	end

	def test_split_tickets_into_array
		assert_equal(4,split_ticket_into_array("1234").count)
		assert_equal(Array,split_ticket_into_array("1234").class)
	end

	def test_winning_numbers
		assert_equal(Array,winning_numbers(4).class)
		assert_equal(5,winning_numbers(4).count)
	end

end