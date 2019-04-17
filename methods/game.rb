def check_win(num, number)
  abort 'Ура, вы выиграли!' if num == number
end

def check_diff(num, number)
  if (number - num).abs <= 2
    puts 'Тепло (нужно меньше)' if num > number
    puts 'Тепло (нужно больше)' if num < number
  else
    puts 'Холодно (нужно меньше)' if num > number
    puts 'Холодно (нужно больше)' if num < number
  end
end

number = rand(16)

puts 'Загадано число от 0 до 16, отгадайте какое?'

attemps = 3

while attemps > 0
  attemps -= 1
  n = STDIN.gets.to_i
  check_win(n, number)
  check_diff(n, number)
end

abort 'Не угадал ' + number.to_s
