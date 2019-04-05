number = rand(11)

puts 'Монета встала на ребро' if number.zero?

puts 'Выпал орел' if [1, 2, 3, 4, 5].include?(number)

puts 'Выпала решка' if [6, 7, 8, 9, 10].include?(number)
