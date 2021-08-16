def lucky_tickets(tickets)
	minimum = tickets['min']
	maximum = tickets['max']
	

	result_easy = []
	result_hard = []
	
	# Если минимум больше максимума
	if minimum > maximum
		minimum, maximum = maximum, minimum
	end
	
	# Если какое-то значение меньше 0
	
	return Hash['status', 'failed', 'reason', 'Билет не может быть меньше либо равен 0'] if minimum <= 0 or maximum <= 0
	
	# Если какой-то элемент не числовое значение
	
	return Hash['status', 'failed', 'reason', 'Значение минимума или максимума не является целым числом'] if !minimum.is_a?(Integer) or !maximum.is_a?(Integer)
	
	# Простой способ - сумма первых 3х значений == сумма последних 3х значений
	for i in minimum..maximum 
		digit = minimum.digits.concat([0,0,0,0,0,0]).slice(0..6)
		left = digit.slice!(0..2)
		right = digit.slice!(0..2)
		result_easy.push(minimum) if left.sum == right.sum
		minimum += 1		
	end
	
	minimum = tickets['min']
	# Сложный способ - сумма четных чисел билета равна сумме нечетных
	for j in minimum..maximum
		digit = minimum.digits.concat([0,0,0,0,0,0]).slice(0..6)
		
		sum_odd, sum_even = 0, 0
		
		for num in 0...digit.length
			digit[num].remainder(2) == 0 ? sum_even += digit[num] : sum_odd += digit[num]	
		end
		
		result_hard.push(minimum) if sum_odd == sum_even	
		minimum += 1
	end
	
	return result_easy.length > result_hard.length ? Hash['winner', 1, 'lucky', result_easy, 'counts', result_easy.length] : Hash['winner', 2, 'lucky', result_hard, 'counts', result_hard.length]
	
end

p lucky_tickets({'min' => 100, 'max' => 123})
