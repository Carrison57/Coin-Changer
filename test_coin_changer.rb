require "minitest/autorun"
require_relative "coin_changer.rb"

class Test_Coin_Changer < Minitest::Test

	def	test_13_returns_1_dime_3_pennies
	assert_equal({:quarter => 0, :dime => 1, :nickel => 0, :penny => 3}, coin_changer(13))
	end

	def	test_1027_returns_41_quarters_2_pennies
	assert_equal({:quarter => 41, :dime => 0, :nickel => 0, :penny => 2}, coin_changer(1027))
	end

	def	test_6400_returns__dimes_3_pennies
	assert_equal({:quarter => 256, :dime => 0, :nickel => 0, :penny => 0}, coin_changer(6400))
	end
end