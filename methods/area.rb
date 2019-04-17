def area(radius)
  radius * radius * Math::PI
end

puts 'Введите радиус круга:'
radius = STDIN.gets.to_f
res = area radius
puts 'Площадь круга: ' + res.round(3).to_s

puts 'Введите радиус второго круга:'
radius = STDIN.gets.to_f
res = area radius
puts 'Площадь второго круга: ' + res.round(3).to_s
