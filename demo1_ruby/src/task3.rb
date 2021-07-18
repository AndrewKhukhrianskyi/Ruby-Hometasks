def triangle(tr_mass)
	unpack = []
	result = [] 
	names = []
	
	final = []
	

	
	# Если длина хэша имеет еще значение, кроме имени и сторон или не имеет
	tr_mass.each{|h| return Hash['status', 'failed', 'reason', 'В каком-то треугольнике больше/меньше 3х сторон'] if h.length > 4 or h.length < 4}
	
	# Распаковываем массив
	tr_mass.each{|h| h.each_value {|val| unpack.push(val)}}
	
	
	
	# Выделяем имена треугольников из распакованного массива
	for i in 0..unpack.length - 1
		if unpack[i].is_a? String
			names.push(unpack[i])
			unpack.delete_at(i)
		end
	end
	
	# Если какое-то значение не является числом
	
	for elem in 0..unpack.length
		return Hash['status', 'failed', 'reason','Значение не числовое!'] if unpack[elem].is_a?(String)  or unpack[elem].is_a?(TrueClass) or unpack[elem].is_a?(FalseClass)
	end
	
	# Если хоть одно значение в треугольнике <= 0 - возвращаем исключение
	for zero in 0..unpack.length - 1
		return Hash['status', 'failed', 'reason', 'В каком-то треугольнике сторона меньше 0 либо равна ему'] if unpack[zero] <= 0
	end
	
	# Выделяем стороны одного из треугольников и считаем площадь
	for j in 0..names.length - 1
		mass = unpack.slice!(0..2)
		p = mass.sum / 2
		side, side2, side3 = p - mass[0], p - mass[1], p - mass[2]
		result.push([Math.sqrt(p * side * side2 * side3).round(1), names[j]])
		
	end
	
	
	result = result.sort!.reverse!
	
	result.each {|el| final.push(el[1])}
	
	return final
	
end



