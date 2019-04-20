require_relative 'person'

person1 = Person.new('Сергей', 'Петрович', 41)
person2 = Person.new('Константин', 'Львович', 61)

puts 'У нас есть два человека:'
puts person1.full_name
puts "И ему #{person1.age} — #{person1.old? ? 'пожилой' : 'молодой'}"
puts person2.full_name
puts "И ему #{person2.age} — #{person2.old? ? 'пожилой' : 'молодой'}"
