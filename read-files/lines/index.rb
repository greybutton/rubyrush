arg = ARGV[0]

abort 'No file path' if !arg

current_path = File.dirname(__FILE__)
file_path = current_path + '/' + arg
abort 'File not found' if !File.exist?(file_path)

file = File.new(file_path, 'r:UTF-8')
lines = file.readlines
file.close

empty_lines = 0
for line in lines
  empty_lines += 1 if line.chomp == ''
end

puts "Открыли файл: #{arg}"
puts "Всего строк: #{lines.size}"
puts "Пустых строк: #{empty_lines}"
puts 'Последние 5 строк файла: '
i = lines.size - 5
while i < lines.size
  puts lines[i]
  i += 1
end
