class Product
  attr_reader :name, :price, :amount

  def initialize(options)
    @name = options[:name]
    @price = options[:price]
    @amount = options[:amount]
  end
end

class Book < Product
  def initialize(options)
    super
    @genre = options[:genre]
    @author = options[:author]
  end

  def to_s
    "Книга '#{@name}', #{@genre}, автор - #{@author}, #{@price} руб., (осталось #{@amount})"
  end
end

class Film < Product
  def initialize(options)
    super
    @year = options[:year]
    @director = options[:director]
  end

  def to_s
    "Фильм '#{@name}', #{@year}, реж. - #{@director}, #{@price} руб., (осталось #{@amount})"
  end
end

film1 = Film.new(name: 'Леон', price: 990, amount: 5, director: 'Люк Бессон', year: 1994)
film2 = Film.new(name: 'Дурак', price: 390, amount: 1, director: 'Юрий Быков', year: 2014)
book1 = Book.new(name: 'Идиот', price: 1500, amount: 10, genre: 'роман', author: 'Федор Достоевский')

puts 'Вот какие товары у нас есть:'
puts
puts film1.to_s
puts film2.to_s
puts book1.to_s
