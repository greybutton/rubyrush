require 'rexml/document'
require 'date'

puts 'В этом сундуке хранятся ваши желания.'
puts 'Чего бы вы хотели?'
text = STDIN.gets.encode('UTF-8').chomp
puts 'До какого числа вы хотите осуществить это желание? (укажите дату в формате ДД.ММ.ГГГГ)'
date = STDIN.gets.encode('UTF-8').chomp

current_path = File.dirname(__FILE__)
file_name = current_path + '/wishes.xml'
file = File.new(file_name, 'r:UTF-8')
doc = nil
begin
  doc = REXML::Document.new(file)
rescue REXML::ParseException => e
  puts 'XML файл похоже битый'
  abort e.message
end
file.close

wishes = doc.elements.find('wishes').first
wishes.add_element 'wish', {
  'text' => text,
  'date' => Date.parse(date).strftime('%Y.%m.%d')
}
file = File.new(file_name, 'w:UTF-8')
doc.write(file, 2)
file.close

puts 'Ваше желание в сундуке'
