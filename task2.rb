# Задача 1 - ремонт

def room(l,w,h)
  if l >= 1000 || w >= 1000 || h >= 1000
	return 'Error'
  end
  
  paint = 16
  area = (w + l) * 8 * h
  
  return area / paint

end

puts 'Введи длину (м):'
length = gets.to_i()

puts 'Введи ширину (м):'
width = gets.to_i()

puts 'Введи высоту (м):'
height = gets.to_i()

puts('Для окраски стен необходимо: ' + room(length, width, height).to_s + ' банок')

# Задача 2 - золотой песок

def sand(a1,a2,a3,b1,b2,b3)
	if a1 >= 100 || a2 >= 100 || a3 >= 100 || b1 >= 100 || b2 >= 100 || b3 >= 100
		return 'Error'
	end
	
	
	return (a1 * b1) + (a2 * b2) + (a3 * b3)
end

puts 'Введите значения для следующих параметров: А1, А2, А3, B1, B2, B3'

puts 'A1:'
a1 = gets.to_i
puts 'A2:'
a2 = gets.to_i
puts 'A3:'
a3 = gets.to_i
puts 'B1:'
b1 = gets.to_i
puts 'B2:'
b2 = gets.to_i
puts 'B3:'
b3 = gets.to_i

puts 'Результат: ' + sand(a1,a2,a3,b1,b2,b3).to_s + ' руб'

# Задача 3 - Дубликаты

def duplicates(string)
  if string == ''
    return 0
  end
  new_string = string.split('')
  new_string.sort
  
  
  return new_string.chunk{|e| e}.map{|_, v| v.length}.max
end

puts 'Введи строку:'
string = gets.upcase
puts 'Кол-во дубликатов: ' + duplicates(string).to_s

# Задача 4 - ДНК

def DNA(dna_line)
	new_dna = dna_line.split('')
	result = ''
	for i in 0..new_dna.length
	  case new_dna[i]
	  when 'T'
	    new_dna[i] = 'A'
		result += new_dna[i]
		
	  when 'A'
	    new_dna[i] = 'T'
		result += new_dna[i]
		
	  when 'C'
	    new_dna[i] = 'G'
		result += new_dna[i]
		
	  when 'G'
	    new_dna[i] = 'C'
		result += new_dna[i]
		
	  end    
	end
	return result
end

puts 'Введи ДНК:'
dna_line = gets
puts 'Результат работы: ' + DNA(dna_line)

# Задача 5 - самое короткое слово

def short_word(text)
   splitter = text.split(' ')
   
   short_save = 0
   
   for i in 0..splitter.length - 1 # Топаем по длине массива 
	 
	 for j in 0..splitter.length - 1
	   
	   if splitter[i].to_s.size <= splitter[j].to_s.size 
	     short_save = splitter[i].to_s.size
	   end
	 
	 end
   
   end
   
   return short_save

end

puts 'Введи текст:'
text = gets
puts 'Самое короткое слово в тексте: ' + short_word(text).to_s

# Задача 6 - сортировка текста

def sort_text(txt)
  splitter = txt.split(' ') 
  check = 1
  save_text = ''
  for i in 0..splitter.length - 1
  # Содержит ли в себе строка какой-то элемент (include?)
    if splitter[i].to_s.include? check.to_s 
	  save_text += splitter[i].to_s + ' '
	  check = check.to_i
	  check += 1
	end
  end
  return save_text
   
end

puts(sort_text('is2 Thi1s T4est 3a'))



