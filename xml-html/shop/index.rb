require_relative 'Product'
require_relative 'Book'
require_relative 'Film'
require_relative 'ProductCollection'

puts 'Что хотите купить?'
pc = ProductCollection.from_xml

pc.to_a.each_with_index do |item, i|
  puts "#{i}: #{item}"
end
puts 'x. Покинуть магазин'

sum = 0
input = nil
while input != 'x'
  input = STDIN.gets.chomp
  break if input == 'x'

  sum += pc.to_a[input.to_i].price
end

if sum.zero?
  puts 'До свидания!'
else
  puts "Спасибо за покупки, с Вас #{sum} руб."
end

puts 'sort by price'
puts pc.sort(by: :price).to_a
puts 'sort by amount'
puts pc.sort(by: :amount).to_a
puts 'sort by name'
puts pc.sort(by: :name).to_a
puts 'sort by name, order asc'
puts pc.sort(by: :name, order: :asc).to_a
