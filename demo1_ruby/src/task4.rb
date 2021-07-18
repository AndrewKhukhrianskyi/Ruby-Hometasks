def palindrome(num)
  return Hash['status', 'failed', 'reason', 'Нечисловое значение передано!'] if !num.is_a?(Integer)
  
  return Hash['status', 'failed', 'reason', 'Число вышло за пределы от числа в 1 значение до числа со 100 значениями'] if num < 9 or num.to_s.length > 100
  
  s, result = num.digits, [] # digits разбивает число на единичные значения и реверсирует порядок
  # Пример: 1000.digits => [0,0,0,1]
  
  # При помощи count будем определять длину палиндрома
  # each_cons(m) выступает в роли границ палиндрома, где m - это граничное значение, т.е длина подмассива
  # Таким образом мы считаем палиндромы от самых маленьких, до самых больших: 
  (2..s.size).count { |m|
    s.each_cons(m) { |seq|
      result << seq.join.to_i if seq == seq.reverse and seq[0] != 0 and seq[-1] != 0
    }
  }

 return result.empty? ? 0 : result.sort![-1]
end

