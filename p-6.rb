# 1 метод, который получает в качестве аргумента массив, а возвращает массив где есть только отрицательные числа
def negative_numbers(array)
  array.select { |i| i < 0 }
end

puts negative_numbers([3, 5, -7, 6, -6])
puts '_______________________'

# 2 метод, который получает хеш, а выводит массив содержащий ключи у которых значения – это положительные числа
def positive_values(hash)
  hash.select { |_k, v| v > 0 }
end

puts positive_values({ a: 3, b: 5, c: -7, d: 6, e: -6 })
puts '_______________________'

# 3 метод, который получает хеш, а выводит массив ключей, который содержит не уникальные значения
def keys_with_ununiq_values(hash)
  hash.select { |_k, v| hash.values.count(v) > 1 }.keys
end

puts keys_with_ununiq_values({ a: 3, b: 5, c: -7, d: 6, e: 6 })
puts '_______________________'

# 4 метод, который Определяет победителя в игру «камень ножницы бумага».
# На вход подается строка «камень» или “ножницы» или «бумага».
# На выходе должно быть «Компьютер выбрал <>. Вы победили» или «Компьютер выбрал <>.
# Вы проиграли» или «Компьютер выбрал <>. Ничья».
# Вариант «компьютера» должен определяться рандомно/случайно
def game(string)
  computer_choice = %w[камень ножницы бумага].sample
  return 'ничья' if computer_choice == string

  answer =
    case computer_choice
    when 'камень'
        string == 'ножницы' ? 'проиграли' : 'выиграли'
    when 'ножницы'
      if string == 'бумага'
        'проиграли'
      else
        'выиграли'
      end
    when 'бумага'
      if string == 'ножницы'
        'выиграли'
      else
        'проиграли'
      end
    end

  "Компьютер выбрал #{computer_choice}. Вы #{answer}"
end

puts game('ножницы')
puts '_______________________'

# 5 метод, который принимает число и добавляет к нему слово «год», «года» или «лет» так, чтобы фраза
# соответствовала правилам русского языка
def correct_word(number)
  if number.to_s.chars.last(2).join.to_i.between?(10, 20)
    "#{number} лет"
  elsif number.to_s.chars.last(1).join.to_i.between?(2, 4)
    "#{number} года"
  elsif number.to_s.chars.last(1).join.to_i.between?(5, 9)
    "#{number} лет"
  elsif number == 1
    "#{number} год"
  end
end

puts correct_word(114)
