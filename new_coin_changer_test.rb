require "minitest/autorun"
require_relative "new_coin_changer.rb"

class Test_Coin_Changer < Minitest::Test
	def test_zero_cents_returns_empty_hash
		assert_equal({}, generate_change(0))
	end

	def test_one_cent_returns_hash_with_one_penny
		assert_equal({penny: 1}, generate_change(1))
	end

	def test_two_cents_returns_hash_with_two_pennies
		assert_equal({penny: 2}, generate_change(2))
	end

	def test_five_cents_returns_hash_with_one_nickel
		assert_equal({nickel: 1}, generate_change(5))
	end

	def test_seven_cents_returns_hash_with_one_nickel_two_pennies
		assert_equal({nickel: 1, penny: 3}, generate_change(8))
	end

	def test_eleven_cents_returns_hash_with_one_dime_one_penny
		assert_equal({dime: 1, penny: 1}, generate_change(11))
	end

	def test_fifteen_cents_returns_hash_with_one_dime_one_nickel
		assert_equal({dime: 1, nickel: 1}, generate_change(15))
	end

	def test_sixteen_cents_returns_hash_with_one_dime_one_nickel_one_penny
		assert_equal({dime: 1, nickel: 1}, generate_change(15))
	end

	def test_twenty_cents_returns_hash_with_two_dimes
		assert_equal({dime: 2}, generate_change(20))
	end

	def test_twenty_five_cents_returns_hash_with_two_dimes_two_pennies
		assert_equal({quarter: 1}, generate_change(25))
	end

	def test_thirty_cents_returns_hash_with_one_quarter_one_nickel
		assert_equal({quarter: 1, nickel: 1}, generate_change(30))
	end

	def test_one_dollar_and_sixty_six_cents_returns_one_dollar_two_quarters_one_dime_one_nickel_one_penny
		assert_equal({dollar: 1, quarter: 2, dime: 1, nickel: 1, penny: 1}, generate_change(166))
	end
end
