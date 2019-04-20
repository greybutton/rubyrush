require_relative 'human'

human1 = Human.new('Гаврила', 'Петрович')
human2 = Human.new('Фёдор', 'Петрович')
human3 = Human.new('Василий', 'Алибабаевич')

puts 'У нас есть три человека:'
puts human1.full_name
puts human2.full_name
puts human3.full_name
