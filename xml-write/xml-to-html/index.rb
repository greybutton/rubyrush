require 'rexml/document'
require 'date'

xml_path = File.dirname(__FILE__) + '/business_card.xml'
xml_file = File.new(xml_path, 'r:UTF-8')
doc = REXML::Document.new(xml_file)
xml_file.close

name = doc.root.elements['Name'].text
phone = doc.root.elements['Phone'].text
email = doc.root.elements['Email'].text
description = doc.root.elements['Description'].text

html = REXML::Document.new
html.add_element('html')
html.root.add_element('head').add_element('title').add_text(name)

body = html.root.add_element('body')
body.add_element('p').add_text(phone)
body.add_element('p').add_text(email)
body.add_element('p').add_text(description)

html_path = File.dirname(__FILE__) + '/business_card.html'
html_file = File.new(html_path, 'w:UTF-8')

html_file.puts '<!DOCTYPE html>'
html.write(html_file, 2)
html_file.close
