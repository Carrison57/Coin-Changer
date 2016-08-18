def generate_change(cents)
	
	change = {}
	
	if cents >= 10
		change[:dime] = 1
		cents = cents - 10
	end
	
	if cents >= 5 
		change[:nickel] = 1
		cents = cents - 5
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