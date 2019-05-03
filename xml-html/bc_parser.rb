require 'rexml/document'

current_path = File.dirname(__FILE__)
bc = current_path + '/business_card.xml'

abort 'File not found' unless File.exist?(bc)

file = File.new(bc)
doc = REXML::Document.new(file)

puts doc.root.elements['Name'].text
puts "#{doc.root.elements['Phone'].text}, #{doc.root.elements['Email'].text}"
puts doc.root.elements['Description'].text
