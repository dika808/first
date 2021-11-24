# frozen_string_literal: true

# Измените поведение метода таким образом что при возникновении ошибки деления на 0
# метод перезапускался до тех пор пока ГСЧ не выдаст число отличное от нуля.
def rnd_method
  raise 'Error 1'
end

begin
  10 / rand(-5..5)
rescue ZeroDivisionError
  puts 'Деление на ноль'
end
