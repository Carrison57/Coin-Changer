require "minitest/autorun"
require_relative "new_coin_changer.rb"

class Test_Coin_Changer < Minitest::Test
	def test_zero_cents_returns_empty_hash
		assert_equal({}, generate_change(0))
	end
end