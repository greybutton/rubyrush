puts 'Введите N'
number = gets.to_i

array = []
i = 1
total = 0
while i <= number
  total += i
  array << i
  i += 1
end

puts array.to_s
puts 'Сумма чисел: ' + total.to_s
