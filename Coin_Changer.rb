def coin_changer(currency)
	coins_value = {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}

	correct_change = {:penny => 0, :nickel => 0, :dime => 0, :quarter => 0}

		coins_value.each do |coin, value|
			
			while 
				value <= currency
				correct_change[coin] += 1
				currency -= value
			end
		end
	correct_change
end

