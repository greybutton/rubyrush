require 'json'

current_path = File.dirname(__FILE__)
lang = current_path + '/lang.json'
file = File.read(lang)
doc = JSON.parse(file)

sorted = doc.invert.sort.reverse

puts "Самый популярный язык: #{sorted.first.last} (#{sorted.first.first})"

sorted.each_with_index do |l, i|
  puts "#{i + 1}: #{l.last} (#{l.first}}"
end
