array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

def take(arr, number)
  arr.take(number)
end

puts 'Вот какая палка колбасы у нас есть:'
puts array.to_s
puts 'Сколько первых элементов вам отрезать?'
number = STDIN.gets.to_i
puts 'Вот ваша колбаса: ' + take(array, number).to_s
