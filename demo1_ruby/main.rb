# Добавление задач в основной файл
require_relative 'src/task1.rb'    
require_relative 'src/task2.rb'
require_relative 'src/task3.rb'
require_relative 'src/task4.rb'
require_relative 'src/task5.rb'
require_relative 'src/task6.rb'
require_relative 'src/task7.rb'

# В основном файле мы должны передавать значения функциям

# Задача 1 - Шахматная доска

# +

m = chess_deck(4, 4, '*')
for i in 0..m.length - 1
	p m[i]
end

# -
p chess_deck(4, 4, nil)

# Задача 2 - Конверты

# +
p letters([{ 1 => 4.0, 2 => 3.0}], [{1 => 2.0, 2 => 2.2}])

# -
p letters([{ 1 => 4.0, 2 => 3.0}], [{1 => -2.0, 2 => 2.2}])

# Задача 3 - Сортировка треугольников

# +
p triangle([{'verticles' => 'ABC', 'a' => 15, 'b' => 12.3, 'c' => 9.4},
			{'verticles2' => 'CQD', 'c' => 10.2, 'q' => 8.5, 'd' => 15.5},
			{'verticles3' => 'ABC', 'a' => 5, 'b' => 12, 'c' => 13.0},
			{'verticles4' => 'UWX', 'u' => 15, 'w' => 25.7, 'x' => 14.3}])
			
# - 
p triangle([{'verticles' => 'ABC', 'a' => 15, 'b' => 12.3, 'c' => 9.4},
			{'verticles2' => 'CQD', 'c' => 10.2, 'q' => 8.5, 'd' => 15.5},
			{'verticles3' => 'ABC', 'a' => 5, 'b' => 12, 'c' => 13.0},
			{'verticles4' => 'UWX', 'u' => 15, 'w' => 25.7, 'x' => true}])


# Задача 4 - Самый большой палиндром

# +
p palindrome(2**39)

# - 
p palindrome('abc')

# Задача 5 - Счастливые билеты

# +
p lucky_tickets({'min' => 1, 'max' => 10000})

# - 
p lucky_tickets({'min' => 0, 'max' => 1000})

# Задача 6 - Числовая последовательность

# +
p min_quad(5, 30)

# - 
p min_quad(-2, 40)

# Задача 7 - Последовательность Фибоначчи

# +
p fibs({'length' => 7})

# -
p fibs({'length' => 'abc'})


