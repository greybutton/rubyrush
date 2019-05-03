class Product
  attr_accessor :name, :price, :amount

  def initialize(options)
    @name = options[:name]
    @price = options[:price]
    @amount = options[:amount]
  end
end

class Book < Product
  attr_accessor :genre, :author

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
  attr_accessor :year, :director

  def initialize(options)
    super
    @year = options[:year]
    @director = options[:director]
  end

  def to_s
    "Фильм '#{@name}', #{@year}, реж. - #{@director}, #{@price} руб., (осталось #{@amount})"
  end
end

film1 = Film.new(name: 'Леон', price: 990, director: 'Люк Бессон')
film1.year = 1994
film1.amount = 5
film2 = Film.new(name: 'Дурак', price: 390, amount: 1, director: 'Юрий Быков', year: 2014)
book1 = Book.new(name: 'Идиот', amount: 10, author: 'Федор Достоевский')
book1.genre = 'роман'
book1.price = 1500

puts 'Вот какие товары у нас есть:'
puts
puts film1
puts film2
puts book1
