def stock_picker array
	low = 0
	high = 0
	best_profit = 0

	array[0..-2].each_with_index do |buy, index|
		array[(index+1)..-1].each_with_index do |sell,j|
			if sell-buy > best_profit
				low = index
				high = j+ index + 1
				best_profit = sell-buy
			end
		end
	end
	return [low,high]

end

p stock_picker([17,3,6,9,15,8,6,1,10])