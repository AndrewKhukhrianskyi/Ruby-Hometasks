def chess_deck(len, width, element)
  mass_result = []
  
  str_even = ''
  str_odd = ''
  
  return Hash['status', 'failed', 'reason', 'Длина или высота не число или отрисовочный элемент не строка'] if !len.is_a?(Integer) or !width.is_a?(Integer) or !element.is_a?(String)
  
  for i in 1..len
    str_even += " " + element
    str_odd += element + " "
	
  end
    
  for j in 1..width / 2
    mass_result.push(str_even)
	mass_result.push(str_odd)
  end
  
  return mass_result
end

