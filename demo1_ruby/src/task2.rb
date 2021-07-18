def letters(list1, list2)
	
	main_mass = [] # Общий массив значений конвертов, вложим в формате [длина, высота, длина, высота]
	
	list1.each {|el| el.each_value {|side| main_mass.push(side)}}
	list2.each {|el2| el2.each_value {|side2| main_mass.push(side2)}}
	
	# Если значение меньше 0
	for i in 0..main_mass.length - 1
		return Hash['status', 'failed', 'reason', 'В каком-то треугольнике значение меньше меньше 0 либо равно ему'] if main_mass[i] <= 0
	end
	
	# Если значение не число
	
	for elem in 0..main_mass.length - 1
		return Hash['status', 'failed', 'reason', 'Присутствует не дробное значение'] if !main_mass[i].is_a?(Float)
	end

	# Ахтунг! Колхоз детектед!
	if main_mass[0] > main_mass [2] and main_mass[1] > main_mass [3]
		return 'Конверт 2 можно вложить в конверт 1'
		
	elsif main_mass[0] < main_mass [2] and main_mass[1] < main_mass [3]
		return 'Конверт 1 можно вложить в конверт 2'
	
	elsif main_mass[0] == main_mass [2] and main_mass[1] == main_mass [3]
		return 'Конверты одинаковы по размерам. По идее - можно вложить либо конверт 1 в конверт 2 либо наоборот'
	
	else
		w1, h1 = main_mass[0], main_mass[1]
		w2, h2 = main_mass[2], main_mass[3]
		el1 = h1 / w1 # 1 конверт
		el2 = h2 / w2 # 2 конверт
		
		part1 = el1 - el2
		part2 = 1 - (el1 * el2)
		part3 = el2 - el1
		
		# Подсчет тангенсов
		tg1 = part1 / part2
		tg2 = part3 / part1
		
		if tg1 >= 0 or tg1 == tg2 and tg1 > tg2
			return 'Конверт 2 вкладывается в конверт 1 по диагонали'
		elsif tg2 >= 0 or tg2 == tg1 and tg2 > tg1
			return 'Конверт 1 вкладывается в конверт 2 по диагонали'
		else
			return 0	
		end
	end

	 
end
  
