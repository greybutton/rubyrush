puts 'Какая у вас на руках валюта?
1. Рубли
2. Доллары'

choice = gets.chomp

puts 'Сколько сейчас стоит 1 доллар в рублях?'
dollar = gets.to_f

if choice == '1'
  puts 'Сколько  у вас рублей?'
  rubles = gets.to_f

  result = rubles / dollar

  abort 'Ваши запасы равны: $ ' + result.round(2).to_s
else
  puts 'Сколько  у вас долларов?'
  dollars = gets.to_f

  result = dollar * dollars

  abort 'Ваши запасы равны: ' + result.round(2).to_s + ' руб.'
end
