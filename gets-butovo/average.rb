puts 'Введите число 1:'
first = gets.chomp.to_i
puts 'Введите число 2:'
second = gets.chomp.to_i
puts 'Введите число 3:'
third = gets.chomp.to_i

result = (first + second + third) / 3

abort 'Среднее арифметическое: ' + result.to_s
