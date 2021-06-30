# Задача 1 - минимальный элемент
def min_list(mass)
  res = 0
  for i in 0...mass.length
    res += mass[i].min
  end
  
  return res
end

puts('Результат: ' + min_list([[13,2,34,25], [4,5,6], [7,8,9,12,1]]).to_s)

# Задача 2 - Два старших значения
def last_values(mass)
  last = mass.dup.sort
  last_save = []
  
  for i in 1..2
    last_save.push(last.pop)
  end
  
  return last_save.sort
end
puts('Два старших значения: ' + last_values([4,10,12,2]).to_s)