require_relative 'film'

puts 'Фильмы какого режиссера Вы хотите посмотреть?'

director_name = STDIN.gets.encode('UTF-8').chomp

films = []
i = 0
while i < 3
  i += 1
  puts 'Какой-нибудь его хороший фильм?'
  film_title = STDIN.gets.encode('UTF-8').chomp
  film = Film.new(director_name, film_title)
  films << film
end

film = films.sample

puts "И сегодня вечером рекомендую посмотреть: #{film.film_title}"
puts "Режиссера: #{film.director_name}"
