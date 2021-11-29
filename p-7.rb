BREAK = '_______________________'
# 1 метод, выбирает только те числа которые после умножения на 3 делятся на 2 без остатка
def division_without_remainder(number)
  number.to_a.select { |number| (number * 3) % 2 == 0 }
end

puts division_without_remainder([4, 3, 12, 6])
puts BREAK

# 2 метод, который вычисляет остаток от деления на 4 для каждого элемента и выбирает из них только
# уникальные значения
def division_with_uniq_values(hash)
  hash.map { |_key, value| value % 4 }.uniq
end

puts division_with_uniq_values({ a: 12, b: 7, c: 34, d: 24, e: 5 })
puts BREAK

# 3 метод, который будет получать хеш, выбирать из него ключи у которых положительное значение и
# возвращать массив с этими ключами в отсортированном по алфавиту порядке
def sort_by_alphabet(hash)
  hash.select { |_k, v| v.positive? }.sort
end

puts sort_by_alphabet({ a: 15, c: -8, e: 60, b: 61, d: -5 })
puts BREAK


