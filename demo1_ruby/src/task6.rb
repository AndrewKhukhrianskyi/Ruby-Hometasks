def min_quad(len, min_square)
	return Hash['status', 'failed', 'reason', 'Длина или ЗМК меньше 0 либо равна ему'] if len <= 0 or min_square <= 0
	
	return Hash['status', 'failed', 'reason', 'Длина или ЗМК не является числом'] if !len.is_a?(Integer) or !min_square.is_a?(Integer)
	
	number = Math.sqrt(min_square).ceil
	numbers = ''
	
	
	for el in 0..len - 1
		numbers += (number + el).to_s + ' '
	end
	
	return numbers
end

