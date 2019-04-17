def get_stars(number)
  i = 0
  res = ''
  while i < number
    res += '*'
    i += 1
  end
  res
end

puts 'Сколько вам звезд на погоны?'
number = STDIN.gets.to_i
puts 'Вот ваши звезды :)'
puts get_stars(number).to_s
