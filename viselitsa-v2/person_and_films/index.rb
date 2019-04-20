require_relative 'person'
require_relative 'film'

p1 = Person.new('Sergei')
p2 = Person.new('Vera')
p3 = Person.new('John')

f1 = Film.new('Me', 'Tron')
f2 = Film.new('Myself', 'Batman')
f3 = Film.new('I', 'Gattaka')

p1.favorite_film = f3
p2.favorite_film = f2
p3.favorite_film = f1

puts "#{p1.name} с любимым фильмом: #{p1.favorite_film.title}"
puts "#{p2.name} с любимым фильмом: #{p2.favorite_film.title}"
puts "#{p3.name} с любимым фильмом: #{p3.favorite_film.title}"
