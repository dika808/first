#1 метод, который вернет количество ключей хеша
def keys_count(hash)
    hash.keys.count
end

puts keys_count({a: 13, b: 5, c: -6, d: 6})

#2 метод, который вернет количество уникальных значений хеша
def uniq_values(hash)
    hash.values.uniq.count
end

puts uniq_values({a: 5, b: -5, c: -6, d: 6, e: 6})

#3 метод, который вернет сумму значений хеша
def sum_of_values(hash)
    hash.values.sum
end

puts sum_of_values({a: 13, b: 5, c: -6, d: 9})

#4 метод, который конвертирует рубли в валюту. Метод должен принимать 2 аргумента: рубли как
вещественное число и название валюты как строку
def convert_rubles_to_currency(rubles, currency)
    rates = {
        'USD' => 72.57,
        'EUR' => 82.17
    }

    usd = (rubles / rates[currency]).round(2)
end

puts convert_rubles_to_currency(300, 'USD')

#5 рассчитывает стоимость ВМ по ее параметрам. Метод должен принимать cpu, ram, hdd.На выходе должен быть хеш: содержащий стоимость cpu, ram, hdd и общую стоимость ВМ
def 