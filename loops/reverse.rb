array = [1, 2, 3, 4, 5, 6, 7]

result = []

# i = array.length - 1
# while i >= 0
#   result << array[i]
#   i -= 1
# end

for item in array
  result.unshift(item)
end

puts 'Исходный массив: ' + array.to_s
puts 'Новый массив, полученный из исходного: ' + result.to_s
