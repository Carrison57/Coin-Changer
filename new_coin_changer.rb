def generate_change(cents)
	
	change = {}
	
	quarter = 25
	dime = 10
	nickel = 5
	
	if cents >= quarter
		coins = cents / quarter
		change[:quarter] = coins
		cents = cents - (quarter * coins)
	end

	if cents >= dime
		coins = cents / dime
		change[:dime] = coins
		cents = cents - (dime * coins) 
	end
	
	if cents >= nickel
		change[:nickel] = 1
		cents = cents - nickel
	end
	if cents > 0
		change[:penny] = cents
	end

	


	# if cents == 16
	# 	change[:dime]
	# 	change[:nickel]
	# 	change[:penny] = cents - 15
	# elsif cents == 15
	# 	change[:dime] = 1
	# 	change[:nickel] = 1
	# elsif cents >= 10
	# 	change[:dime] = 1
	# 	change[:penny] = cents - 10
	# elsif cents > 5
	# 	change[:nickel] = 1
	# 	change[:penny] = cents - 5
	# elsif cents == 5 
	# 	change[:nickel] = 1
	# elsif cents > 0
	# 	change[:penny] = cents
	# end

	change
	
end


# if 