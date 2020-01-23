def total(prices)
	amount= 0
	prices.each do |price| # Process each price.
		amount+= price # Add the current price to the total.
	end
	amount # Return the final total.
end

prices= [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))
# I am just writing this to make a commit. abc