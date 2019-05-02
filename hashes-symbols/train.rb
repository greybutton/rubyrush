train = [
  {
    id: 'РМ2010398 050298',
    start_route: 'Москва',
    finish_route: 'Петушки',
    passenger: 'Венедикт В. Ерофеев',
    passport: '45 99 505281'
  },
  {
    id: 'РМ2010399 050298',
    start_route: 'Павловский Посад',
    finish_route: 'Орехово-Зуево',
    passenger: 'Иннокентий П. Шниперсон',
    passport: '46 01 192872'
  },
  {
    id: 'РМ2010399 050293',
    start_route: 'Москва',
    finish_route: 'Владимир',
    passenger: 'Иван В. Бунша',
    passport: '47 33 912876'
  }
]

puts 'Пассажиры поезда Москва — Петушки'
train.each_with_index do |ticket, i|
  puts
  puts "* * * Место № #{i + 1} * * *"
  puts "Билет № #{ticket[:id]}"
  puts "Маршрут: #{ticket[:start_route]} - #{ticket[:finish_route]}"
  puts "Пассажир: #{ticket[:passenger]}"
  puts "Паспорт: #{ticket[:passport]}"
end
