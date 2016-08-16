require "minitest/autorun"
require_relative "coin_changer.rb"

class Test_Coin_Changer < Minitest::Test

	def test_coin_changer_return_minimum_coins
		coins = "75"
		assert_equal({}, coin_changer())
	end
end