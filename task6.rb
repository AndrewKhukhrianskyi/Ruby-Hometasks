# Задача 1 - CamelCase
require 'rubygems'
require 'domainatrix'

def camel_case(word)
	mass_word = word.split('')
	
	for i in 0..mass_word.length - 1
		if mass_word[i] == '-'
			mass_word.delete_at(i)
			mass_word[i].upcase!
			
		end
		
	end
	return mass_word.join
end

puts camel_case('long-live-to-the-king')

# Задача 2 - аббревиатуры

def short_words(word)
	res = '' + word[0]
	alphabet = 'abcdefghijklmnopqrstuvwxyzабвгдеёжзийклмнопрстуфхцчшщьъэюя'
	for i in 0..word.length - 1
		if word[i] == ' ' or !alphabet.include?(word[i])
			res += word[i + 1]
		end
	end	
	
	return res.upcase!
end

puts short_words('hyper-text markup language')

# Задача 3 - url

def get_url(url)
	parser = Domainatrix.parse(url)
	return "Протокол: " + parser.scheme + " Домен: " + parser.subdomain + '.' + parser.domain + '.' + parser.public_suffix + " Путь: " + parser.path
	
	 
end

puts get_url('https://career.softserveinc.com/en-us/learning-and-certification/formats-2')

