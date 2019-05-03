require 'rexml/document'
require 'date'

current_path = File.dirname(__FILE__)
file_name = current_path + '/wishes.xml'
file = File.new(file_name, 'r:UTF-8')
doc = REXML::Document.new(file)
file.close

wishes = doc.elements.collect('wishes/wish') do |wish|
  {
    text: wish.attributes['text'],
    date: Date.parse(wish.attributes['date'])
  }
end

past = wishes.select do |wish|
  wish[:date] < Date.today
end
future = wishes.select do |wish|
  wish[:date] >= Date.today
end

puts 'Эти желания должны уже были сбыться к сегодняшнему дню'
past.each do |wish|
  puts "#{wish[:date].strftime('%Y.%m.%d')}: #{wish[:text]}"
end

puts 'А этим желаниям ещё предстоит сбыться'
future.each do |wish|
  puts "#{wish[:date].strftime('%Y.%m.%d')}: #{wish[:text]}"
end
