def negative(array)
    array.select { |i| i < 0}
    end
puts negative([3, 5, -5])

def positive(hash)
    a = []
    a = hash.select{ |k, v| v > 0}
end

puts positive({a: 13, b: 5, c: -6})

def ununiq_values(hash)
    hash.select { |key, value| hash.values.count(value) > 1}.keys
end

puts ununiq_values({a: 13, b: 5, c: -6, d: 5})















def uniq_count(array)

array - array.max(2) - array.min(2) 
end

puts uniq_count([3, 5, 7, 3, 8])




def diagonal(array)
    a = array.split(',')
    a[0].first
    # array[1](1)
    # array[2](2)
end

puts diagonal([[3, 5, 7], [3, 8, 10], [5, 5, 6]])

def convert(rubl, currency)
    rate = {
        'USD' => 71.11,
        'EUR' => 81.55
    }

(rubl / rate[currency]).round(2)
end

puts convert(100, 'USD')

def machine(cpu, ram, hdd)
prices = {
    'CPU' => 10,
    'RAM' => 90,
    'HDD' => 80
}

result = {
'CPU' => prices['CPU'] * cpu,
'RAM' => prices['RAM'] * ram,
'HDD' => prices['HDD'] * hdd, 
'total' => prices['CPU'] * cpu + prices['RAM'] * ram + prices['HDD'] * hdd
}

result
end

puts machine(6, 5, 8)