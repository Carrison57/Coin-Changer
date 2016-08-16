require "minitest/autorun"
require_relative "coin_changer.rb"

class Test_Coin_Changer < Minitest::Test

	def test_coin_changer_return_minimum_coins
		currency = {"penny" => "1", "nickel" => "5", "dime" => "10", "quarter" => "25"}
		assert_equal(true, coin_changer(currency))
	end

	def test_coin_changer_if_result_is_a_dime
		currency = {"penny" => "1", "nickel" => "5", "dime" => "10", "quarter" => "25"}
		assert_equal("dime", coin_changer(currency))
	end
end