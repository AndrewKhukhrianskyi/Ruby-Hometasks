# Задача 1 - вывод имени
puts 'Введи имя:'
name = gets
puts('Привет,' + name)

# Задача 2 - день рождения

puts 'Введи год рождения:'
year = gets
puts 'Ваш возраст: ' + (2021 - year.to_i).to_s

# Задача 3 - Периметр
puts 'Сторона квадрата:'
side = gets
puts(side.to_i * 4)

# Задача 4 - Площадь окружности
puts 'Радиуc окружности:'
radius = gets
puts 'Площадь: ' + (3.14 * (radius.to_i ** 2)).to_s

# Задача 5 - Расстояние 
puts 'Расстояние от города А до города Б'
distance = gets.to_f
puts 'Скорость (км/ч)'
speed = gets.to_f
puts 'Время: ' + (distance / speed).round().to_s

# Задача 6 - Конвертер
puts 'Введи сумму (доллар):'
dollar = gets
puts 'Евро: ' + (dollar.to_i * 0.84).to_s

# Задача 7 - Флешка
puts 'Вес (Гб):'
gigabyte = gets
gigabyte = gigabyte.to_f * 1024
result = gigabyte / 820
puts 'Кол-во файлов: '+ result.round().to_s

# Задача 8 - Шоколадка
puts 'Кол-во денег:'
money = gets.to_i
puts 'Цена шоколадки:'
price = gets.to_i
puts 'Сколько шоколадок хочешь купить?'
count = gets.to_i

while count != 0
  money -= price
  count -= 1  
end

puts 'Осталось денег: ' + money.to_s

# Задача 9 - Трехзначное число

puts 'Введите трехзначное число: '
number = gets.reverse!
puts 'Число в обратном порядке: ' + number

# Задача 10 - Подсчет единиц в бинарном числе

def bin1_count(num)

	if num <= 0
	  return 0
	
	else
	
	  num = num.to_s(2)
	  
	  count_1 = 0
	  num.each_char { |el| count_1 += 1 if el == '1'}	
	  return count_1
	end
	
end

puts 'Введи число: '
num = gets.to_i
puts('Кол-во единиц в бинарном виде числа ' + num.to_s + ' равно ' + bin1_count(num).to_s)