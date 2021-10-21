# File creation & writing
filename = rand(100).to_s + '.txt'
file = File.open(filename, 'w')

puts '-------FILE CREATING & WRITING--------'
puts "File #{filename} has been created!"

puts 'Enter a text: '
file.write(gets())

puts 'Text has been added!'
file.close()


# file reading
puts '------FILE READING------'
file_r = File.open(filename, 'r')

puts 'Results: '
puts file_r.read()

file_r.close()

# file deleting
puts '----------FILE DELETING-----------'
File.delete(filename)
puts "File #{filename} has been deleted!"
