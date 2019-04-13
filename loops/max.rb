puts 'Какой длины будет массив случайных чисел?'

length = gets.to_i
array = []

array << rand(101) while array.length < length

max = 0
for x in array
  max = x if x > max
end

puts array.to_s
puts 'Самое большое число: ' + max.to_s
