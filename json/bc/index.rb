require 'json'

current_path = File.dirname(__FILE__)
bc = current_path + '/business_card.json'

abort 'File not found' unless File.exist?(bc)

file = File.read(bc)
doc = JSON.parse(file)

puts doc['name']
puts "#{doc['phone']}, #{doc['email']}"
puts doc['description']
