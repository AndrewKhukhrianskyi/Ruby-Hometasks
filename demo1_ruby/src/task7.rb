def fibs(len)
	if len.length == 1
		# Если переданное значение - не число
		return Hash['status', 'failed', 'reason', 'Переданное значение не является числом'] if !len['length'].is_a?(Integer)
	
		# Если число меньше 0
		return Hash['status', 'failed', 'reason', 'Длина Фибоначчи меньше нуля'] if len['length'] < 0 
	
		# Если хэш больше заданных значений (больше 1)
		
		# Если введен 0 
		return [] if len['length'] == 0
	
	
		fib_mass = [1]
		fib, fib_2 = 0, 1
	
		for i in 1...len['length']
			fib, fib_2 = fib_2, fib + fib_2
			fib_mass.push(fib_2)
		
		end
		return fib_mass
		
	elsif len.length == 2
		return Hash['status', 'failed', 'reason', 'Переданное значение min or max не является числом'] if !len['min'].is_a?(Integer) or !len['max'].is_a?(Integer)
	
		return Hash['status', 'failed', 'reason', 'Длина Фибоначчи меньше нуля'] if len['min'] < 0 or len['max'] < 0
	
		return [] if len['max'] == 0
		
		fib_mass = [1]
		fib, fib_2 = 0, 1
	
		for i in len['min']...len['max']
			fib, fib_2 = fib_2, fib + fib_2
			fib_mass.push(fib_2)
		
		end
		return fib_mass
	else
		return Hash['status', 'failed', 'reason', 'Количество введенных данных превышает требуемые']
	end
end
