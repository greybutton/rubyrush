arr = [1, 2, 3, 4, 5]
arr_reverse = arr.reverse

puts 'Исходный массив: ' + arr.to_s
puts 'Массив в обратном порядке: ' + arr_reverse.to_s
puts 'Исходный массив (не изменился): ' + arr.to_s
arr.reverse!
puts 'Исходный массив (после изменения): ' + arr.to_s
