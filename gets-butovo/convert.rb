puts 'Сколько сейчас стоит 1 доллар в рублях?'
dollar = gets.to_f
puts 'Сколько  у вас рублей?'
rubles = gets.to_f

result = rubles / dollar

abort 'Ваши запасы равны: $' + result.round(2).to_s
