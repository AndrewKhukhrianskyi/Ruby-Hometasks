# Задача 1 - Римские Числа
def num_to_rom(num)
	ones = ['','I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
	tens = ['','X','XX','XXX','XL','L', 'LX', 'LXX', 'LXXX', 'XC']
	hundreds = ['','C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'CM']
	thousands = ['','M', 'MM', 'MMM', 'MMMM', 'V', 'VM', 'VMM', 'VMMM', 'IX']
	
	return [thousands[num / 1000], hundreds[num / 100 % 10],
	tens[num / 10 % 10], ones[num % 10]].join('')
		
end

# Задача 2 - Переводчик

def converter(num, from, to)
	degrees = ['c', 'f', 'k']
	len = ['km', 'm', 'dm', 'cm', 'mm', 'mkm', 'nm', 'ang']
	
	def deg(num, from, to)
		return num * 1.8 + 32 if from == 'c' and to == 'f'
		return num + 273.15 if from == 'c' and to == 'k'
		
		return (num - 32) * 1.8 if from == 'f' and to == 'c'
		return (num - 32) * 1.8 + 273.15 if from == 'f' and to == 'k'
		
		return num - 273.15 if from == 'k' and to == 'c'
		return (num - 273.15) * 1.8 + 32 if from == 'k' and to == 'f'
	end
	
	
	# Пока делал для системы СИ, потому что значений включая британские и американские системы исчисления - будет куча ретурнов - громоздкий код
	def lens(num, from, to)
	
		return num * 1000 if from == 'km' and to == 'm'
		return num * 10000 if from == 'km' and to == 'dm'
		return num * 100000 if from == 'km' and to == 'cm'
		return num * 1000000 if from == 'km' and to == 'mm'
		return num * 10000000 if from == 'km' and to == 'mkm'
		return num * 100000000 if from == 'km' and to == 'nm'
		return num * 1000000000 if from == 'km' and to == 'ang'
		
		return num / 0.001 if from == 'm' and to == 'km' 
		return num * 10 if from == 'm' and to == 'dm'
		return num * 100 if from == 'm' and to == 'cm'
		return num * 1000 if from == 'm' and to == 'mm'
		return num * 10000 if from == 'm' and to == 'mkm'
		return num * 100000 if from == 'm' and to == 'nm'
		return num * 1000000 if from == 'm' and to == 'ang'
		
		return num / 0.0001 if from == 'dm' and to == 'km' 
		return num / 10 if from == 'dm' and to == 'm'
		return num * 10 if from == 'dm' and to == 'cm'
		return num * 100 if from == 'dm' and to == 'mm'
		return num * 100000 if from == 'dm' and to == 'mkm'
		return num * 100000000 if from == 'dm' and to == 'nm'
		return num * 10000000000 if from == 'dm' and to == 'ang'
		
		return num / 0.00001 if from == 'cm' and to == 'km' 
		return num / 100 if from == 'cm' and to == 'm'
		return num / 10 if from == 'cm' and to == 'dm'
		return num * 10 if from == 'cm' and to == 'mm'
		return num * 10000 if from == 'cm' and to == 'mkm'
		return num * 10000000 if from == 'cm' and to == 'nm'
		return num * 1000000000 if from == 'cm' and to == 'ang'
		
		return num / 0.000001 if from == 'mm' and to == 'km' 
		return num / 1000 if from == 'mm' and to == 'm'
		return num / 100 if from == 'mm' and to == 'dm'
		return num / 10 if from == 'mm' and to == 'cm'
		return num * 1000 if from == 'mm' and to == 'mkm'
		return num * 1000000 if from == 'mm' and to == 'nm'
		return num * 10000000 if from == 'mm' and to == 'ang'
		
		return num / 1000000000 if from == 'mkm' and to == 'km' 
		return num / 1000000 if from == 'mkm' and to == 'm'
		return num / 100000 if from == 'mkm' and to == 'dm'
		return num / 10000 if from == 'mkm' and to == 'cm'
		return num / 1000 if from == 'mkm' and to == 'mm'
		return num * 1000 if from == 'mkm' and to == 'nm'
		return num * 10000 if from == 'mkm' and to == 'ang'
		
		return num / 1000000000000 if from == 'nm' and to == 'km' 
		return num / 1000000000 if from == 'nm' and to == 'm'
		return num / 100000000 if from == 'nm' and to == 'dm'
		return num / 10000 if from == 'nm' and to == 'cm'
		return num / 1000 if from == 'nm' and to == 'mm'
		return num * 1000 if from == 'nm' and to == 'mkm'
		return num * 10 if from == 'nm' and to == 'ang'
		
		return num / 10000000000000 if from == 'ang' and to == 'km' 
		return num / 10000000000 if from == 'ang' and to == 'm'
		return num / 1000000000 if from == 'ang' and to == 'dm'
		return num / 100000000 if from == 'ang' and to == 'cm'
		return num / 10000000 if from == 'ang' and to == 'mm'
		return num / 10000 if from == 'ang' and to == 'mkm'
		return num / 10 if from == 'ang' and to == 'nm'
	end
		if degrees.include?(from)
			return num.to_s + ' ' + from + ' ' + '=' + ' ' + deg(num, from, to).to_s + ' ' + to
		
		elsif len.include?(from)
			return num.to_s + ' ' + from + ' ' + '=' + ' ' + lens(num, from, to).to_s + ' ' + to
		else
			return 'Error: Incorrect converter value'
		end
	end

p converter(100, 'c', 'f')
p converter(10, 'km', 'm')
	