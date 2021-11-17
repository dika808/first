#1 вычислить длину строки
def length(string)
    string.length
end

puts length('hello')

#2 вывести строку в регистре который указан в 1-м аргументе
def reg(string)
    a = string.split('').to_a.first
    if a == a.downcase
        puts string.downcase
    else a == a.upcase
       puts string.upcase
    end
end

string = 'Hello'
puts reg(string)

#3 поменять в строке порядок символов на обратный
def reverse(string)
    string.reverse
end

puts reverse('hello')

#4 преобразововывает целое число в строку содержащую данное число в шестинадцатеричном виде и начинается с "Ох"
def convert_to_hex(number)
  "0x#{number.to_s(16)}"
end

puts convert_to_hex(1899)

#5 преобразовывает целое число в строку содержащую данное число в бинарном виде и начинается с "Ob"
def convert_to_bin(number)
    "Ob#{number.to_s(2)}"
end

puts convert_to_bin(12)

#6 конвертирует рубли в доллары по текущему курсу. Результат выводить в виде "$999.99", обязательно выводить центы в виде двух знаков
def convert_to_currency(rubles)
  rate = 72.55
  usd = rubles / rate
  sprintf('$%.2f', usd)
end

puts convert_to_currency(20)


#7 метод, который принимает строку, например "1+2+3", а возвращает результат выражения
def calculateStr(str)
    eval(str) unless str == 'exit'
end

puts calculateStr("2-5-5+5")
