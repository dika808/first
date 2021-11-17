#1 возвращает количество уникальных элементов
def uniq_elements(array)
  array.uniq.count
end

puts uniq_elements([4, 6, 7, 4])

#2 возвращает массив в котором те же элементы, но в обратном порядке
def reverse(array)
  array.reverse
end

puts reverse([3, 5, 7, 7, 8, 0])

#3 возвращает массив в котором те же элементы, но в случайном порядке
def shuffle(array)
  array.shuffle
end

puts shuffle([3, 4, 6, 7, 2])

#4 возвращает массив в котором есть все элементы исходного массива кроме 2
максимальных и два минимальных
def unless_maxmin(array)
  array - array.max(2) - array.min(2)
end

puts unless_maxmin([2, 5, 6, 8, 9, 3])

#5 Написать метод который выводит диагональ квадратной матрицы чисел (массив из n
элементов, каждый из которых является массивом из n чисел) в виде массива
def diagonal(array)
  (0 .. array.count - 1).to_a.map{ |i| array[i][i] }
end

array = [
  [3, 3, 2],
  [2, 1, 1],
  [2, 1, 4],
]
puts diagonal(array)