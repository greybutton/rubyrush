cars = ['Nissan', 'Toyota', 'Lada', 'BMW', 'Tesla', 'Volvo']

puts 'У нас всего ' + cars.length.to_s + ' машин. Вам какую?'

index = gets.to_i

if index <= 0 || index > cars.length
  abort 'Извините, машины с таким номером у нас нет :('
else
  abort 'Поздравляем, вы получили: ' + cars[index - 1]
end
