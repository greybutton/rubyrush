current_path = File.dirname(__FILE__)

films_path = current_path + '/films.txt'
films = File.new(films_path, 'r:UTF-8')
film = films.readlines.sample.chomp
films.close

puts "Сегодня Вам предлагается к просмотру фильм: #{film}"
