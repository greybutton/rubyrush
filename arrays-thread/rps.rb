# rock, paper, scissors

rps = [0, 1, 2]
rps_words = ['камень', 'ножницы', 'бумага']

puts 'введите вариант: 0 - камень, 1 - ножницы, 2 - бумага'

user_i = gets.chomp.to_i
bot_i = rps.sample

puts 'Вы выбрали: ' + rps_words[user_i]
puts 'Компьютер выбрал: ' + rps_words[bot_i]

abort 'Ничья' if user_i == bot_i

if (user_i == 0 && bot_i == 1) || (user_i == 1 && bot_i == 2) || (user_i == 2 && bot_i == 0)
  puts 'Вы победили'
else
  puts 'Победил Компьютер'
end
