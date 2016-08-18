def generate_change(cents)
	
	if cents == 0
		{}
	elsif cents == 5 
		{nickel: 1}
	else 
		{penny: cents}
	end
end