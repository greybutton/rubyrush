require 'json'

current_path = File.dirname(__FILE__)
table_file = current_path + '/table.json'
file = File.read(table_file)
table = JSON.parse(file)

puts "Элементов: #{table.keys.size}"
puts table.keys.to_s

puts 'Введите элемент'
el = STDIN.gets.encode('UTF-8').chomp

if table.key?(el)
  element = table[el]
  puts "Number #{element['number']}"
  puts "Name #{element['name']}"
  puts "Year #{element['year']}"
  puts "Discoverer #{element['discoverer']}"
else
  puts 'Неизвестно'
end
