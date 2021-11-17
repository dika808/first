#сложение двух чисел
def add(a,b)
    a + b
end

puts add(3,4)

#разность двух чисел
def sub(a,b)
    a - b
end

puts sub(5,6)

#произведение двух чисел
def mul(a,b)
    a * b
end

puts mul(4,7)

#остаток от деления двух чисел
def rem(a,b)
    a % b
end

puts rem(9,4)

#округление до второго знака дробной части
def ro(int)
    int.round(2)
end

puts ro(1.678953)

#метод, который вычисляет площадь фигуры. 1 аргумент - радиус или высота, 2 - тип фигуры квадрат или круг
def square(length, type)
  case type
  when 'square'
        length * length
  when 'circle'
        (Math::PI * length ** 2).round(2)
  end
end

puts square(10, 'circle')


#объединение трех методов в один и передача операции третьим аргументом
def calc(a,b,operation)
  case operation
  when 'add'
    a + b 
  when 'sub'
    a - b
  when 'rem'
    a % b
  end
end

puts calc(7,4, 'rem')
    
    
  
  