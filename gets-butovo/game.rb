number = rand(16)

puts 'Загадано число от 0 до 16, отгадайте какое?'

n1 = gets.to_i

abort 'Ура, вы выиграли!' if n1 == number

if (number - n1).abs <= 2
  puts 'Тепло (нужно меньше)' if n1 > number
  puts 'Тепло (нужно больше)' if n1 < number
else
  puts 'Холодно (нужно меньше)' if n1 > number
  puts 'Холодно (нужно больше)' if n1 < number
end

n2 = gets.to_i

abort 'Ура, вы выиграли!' if n2 == number

if (number - n2).abs <= 2
  puts 'Тепло (нужно меньше)' if n2 > number
  puts 'Тепло (нужно больше)' if n2 < number
else
  puts 'Холодно (нужно меньше)' if n2 > number
  puts 'Холодно (нужно больше)' if n2 < number
end

n3 = gets.to_i

abort 'Ура, вы выиграли!' if n3 == number

if (number - n3).abs <= 2
  puts 'Тепло (нужно меньше)' if n3 > number
  puts 'Тепло (нужно больше)' if n3 < number
else
  puts 'Холодно (нужно меньше)' if n3 > number
  puts 'Холодно (нужно больше)' if n3 < number
end

abort 'Не угадал ' + number.to_s
