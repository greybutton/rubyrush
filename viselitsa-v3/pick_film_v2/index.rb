current_path = File.dirname(__FILE__)

films_path = current_path + '/films.txt'
f = File.new(films_path, 'r:UTF-8')
films = f.readlines
f.close
number = rand(films.length + 1)

if (number % 2).zero?
  film = number
  desc = number + 1
else
  film = number - 1
  desc = number
end

puts films[film].chomp
puts films[desc].chomp
