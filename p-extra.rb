# frozen_string_literal: true

BREAK = '_______________________'
# 1 Метод, который выполняет проверку счастливого билета, в шестизначном номере которого сумма
# первых трех цифр совпадает с суммой трех последних
def check_lucky?(string)
  numbers = string.split('').map(&:to_i)
  if numbers[0..2].sum == numbers[3..5].sum
    'счастливый билет'
  else
    'несчастливый билет'
  end
end

puts check_lucky?('234566')
puts BREAK

# 2 метод, который находит n-e число Фибоначчи. Числа Фибоначчи – элементы
# числовой последовательности, в которой первые два числа 0 и 1, а каждоепоследующее число равно
# сумме двух предыдущих чисел
def fibohacci(n)
  return n if (0..1).include? n

  (fibohacci(n - 1) + fibohacci(n - 2))
end

puts fibohacci(9)
puts BREAK

# 3 метод, находит факториал числа n, не используя рекурсии. Факториал n это произведение всех
# чисел от 1 до n включительно
def factorial(n)
  (1..n).inject(1, :*)
end

puts factorial(5)
puts BREAK

# 4 метод, который выводит 100 чисел, заменяя число на «Fizz» если число делится на 3 без остатка,
# «Buzz» если на 5, и «FizzBuzz» если на делится 3 и 5 одновременно
def change_number(number)
  (1..number).each do |n|
    if (n % 15).zero?
      puts 'FizzBuzz'
    elsif (n % 3).zero?
      puts 'Fizz'
    elsif (n % 5).zero?
      puts 'Buzz'
    else
      puts n
    end
  end
end

def change_number_2(number = 100)
  (1..number).each do |n|
    n =
      if (n % 15).zero?
        'FizzBuzz'
      elsif (n % 3).zero?
        'Fizz'
      elsif (n % 5).zero?
        'Buzz'
      else
        n
      end
    puts n
  end
end

change_number(100)
puts BREAK
change_number_2
