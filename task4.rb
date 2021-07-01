#Задача 1 - задача со стульями

def chair(item)
  rev = item.reverse # Переворачиваем двумерный массив
  res = [] # Массив для хранения результатов
  save = nil # контейнер для хранения значений rassoc
  for i in 0..rev.length - 1
  # Извлекаем подмассив обращаясь к основному массиву
    save = rev.rassoc(rev[i][1]).reverse 
	if save[0] - save[1].length < 0
	  res.push(0)
	else
	  res.push(save[0] - save[1].length)
	end
  end
  return res.sum > 0 ? 'Not Enough!' : 'Game On' 
 end

#puts(chair([['XXXXXXXX', 8], ['XX', 3], ['XXX', 1]]))

#Задача 2 - текстовый вид

def num_to_text(num)
  big_nums = [] # для чисел, больше 19
  one_to_nine = {1 => 'один', 2 => 'два',
  3 => 'три', 4 => 'четыре', 5 => 'пять',
  6 => 'шесть', 7 => 'семь', 8 => 'восемь',
  9 => 'девять'}
  
  ten_to_teenth = { 10 => 'десять', 11 => 'одинадцать',
  12 => 'двенадцать', 13 => 'тринадцать', 14 => 'четырнадцать',
  15 => 'пятнадцать', 16 => 'шестнадцать', 17 => 'семнадцать',
  18 => 'восемнадцать', 19 => 'девятнадцать'}
  
  more_teenth = { 20 => 'двадцать', 30 => 'тридцать',
  40 => 'сорок', 50 => 'пятьдесят', 60 => 'шестьдесят',
  70 => 'семьдесят', 80 => 'восемьдесят', 90 => 'девяносто'}
  
  if num < 10
    return 'Я такое не считаю :)'
	
  elsif num <= 19
    return ten_to_teenth[num] 
  end
  
  big_nums = num.to_s.split('')
  big_nums[0] += '0'
  
  for i in 0..big_nums.length
    big_nums[i] = big_nums[i].to_i
  end
  
  
  return more_teenth[big_nums[0]] + ' ' + one_to_nine[big_nums[1]] 

  
  
  
  

end

#puts(num_to_text(67))

# Задача 3 - Проверка результатов

# Ахтунг! Код подгугленный, потому что я мучался над задачей 3 часа а уже пол второго ночи С:
# Построен на RE и хочу его обсудить (код)
def check(res)
  case res.join
  when /1..(1|.1.)..1|1.1.1..$|111(...)*$/ then 1
  when /2..(2|.2.)..2|2.2.2..$|222(...)*$/ then 2
  when /0/ then -1
  else 0
  end
end


puts(check([[1, 1, 1],
	   [0, 1, 2],
       [2, 1, 0]]).to_s)
