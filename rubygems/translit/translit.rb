require 'translit'

puts 'Введите фразу для транслитерации:'
text = STDIN.gets.encode('UTF-8').chomp
result = Translit.convert(text)
puts result
