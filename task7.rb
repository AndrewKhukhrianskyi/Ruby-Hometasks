# Задача 1 - Логин
def login()
	# Словари
	voc = 'abcdefghijklmnopqrstuvwxyz1234567890'
	alph = 'abcdefghijklmonpqrstuvwxyz'
	
	# Добавляем первую заглавную букву
	log = ''
	log += alph[rand(0..alph.length - 1)].capitalize!
	
	# Добавляем остальные буквы
	for el in 0..rand(1..19)
		log += voc[rand(0..voc.length - 1)]
	end
	
	return log	
end

p login

# Задача 2 - Метод shuffle

arr =[1,2,3,4,5]
def to_shuffle(arr)
	return arr.dup.sort_by { rand }
end

