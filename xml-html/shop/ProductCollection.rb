require 'rexml/document'

class ProductCollection
  def initialize(collection = [])
    @collection = collection
  end

  def self.from_xml
    collection = []
    xml_path = File.dirname(__FILE__) + '/shop.xml'
    abort 'File not found' unless File.exist?(xml_path)
    file = File.new(xml_path)
    doc = REXML::Document.new(file)
    doc.elements.each('Shop/Book') do |book|
      name = book.attributes['name']
      price = book.attributes['price'].to_i
      author = book.attributes['author']
      amount = book.attributes['amount'].to_i
      collection << Book.new(name: name, price: price, amount: amount, author: author)
    end
    doc.elements.each('Shop/Film') do |film|
      name = film.attributes['name']
      price = film.attributes['price'].to_i
      director = film.attributes['director']
      year = film.attributes['year'].to_i
      amount = film.attributes['amount'].to_i
      collection << Film.new(name: name, price: price, amount: amount, year: year, director: director)
    end

    self.new(collection)
  end

  def to_a
    @collection
  end

  def sort(params)
    by = params[:by]
    order = params[:order]
    case by
    when :price
      @collection.sort_by! { |product| product.price }
    when :amount
      @collection.sort_by! { |product| product.amount }
    when :name
      @collection.sort_by! { |product| product.name }
    end

    @collection.reverse! if order == :asc
    self
  end
end
