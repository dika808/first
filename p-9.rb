BREAK = '_______________________'

# 1 Создать класс, который реализует поведение виртуальной машины (ВМ) которая имеет возможность:
# 1. запуска (start),
# 2. завершения работы (stop),
# 3. получения текущего состояния (status)
class Vm
  def start
    puts 'Запущен!'
  end

  def stop
    puts 'Остановка!'
  end

  def status
    puts 'Статус'
  end
end

vm = Vm.new
vm.start
vm.status
vm.stop
puts BREAK

# 2 Добавить в класс из задачи No2 метод restart – который переводит ВМ в статус
# «перезагружается» на 30 секунд
class Vm
  def stop
    puts 'Остановка!'
  end

  def status
    puts 'Статус'
  end

  def restart
    puts 'Перезагрузка на 5 секунд'
    sleep 5
  end

  def start
    puts 'Запущен!'
  end
end

vm = Vm.new
vm.stop
vm.status
vm.restart
vm.start
puts BREAK

# 3 Расширить возможности класса String модулем который добавляет:
# 1. метод возвращающий только согласные буквы;
# 2. метод возвращающий гласные буквы.
module ClassMethods
  def consonant(value)
    value.to_s.split('').select { |i| i =~ /[b-df-hj-np-tv-z]/ }
  end

  def vowels(value)
    value.to_s.split('').select { |i| i =~ /[aeiouAEIOU]/ }
  end
end

class String
  extend ClassMethods
end

puts 'Consonant letters:'
puts String.consonant('Hello')
puts 'Vowels letters:'
puts String.vowels('Ruby')
