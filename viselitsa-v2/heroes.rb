def batman?(name)
  ["бэтмен", "batman"].include?(name.downcase)
end

def holms?(name)
  ["шерлок холмс", "холмс", "шерлок"].include?(name.downcase)
end


puts 'Врага какого персонажа вы хотите узнать?'
name = STDIN.gets.encode('UTF-8').chomp

case true
when batman?(name)
  puts 'Джокер'
when holms?(name)
  puts 'Профессор Мориарти'
else
  puts 'Не удалось найти врага.'
end
