class Product
  attr_accessor :name, :price, :amount

  def initialize(options)
    @name = options[:name]
    @price = options[:price]
    @amount = options[:amount]
  end

  def self.from_file
    raise 'NotImplementedError'
  end
end

class Book < Product
  attr_accessor :genre, :author

  def initialize(options)
    super
    @genre = options[:genre]
    @author = options[:author]
  end

  def self.from_file(file_path)
    path = File.dirname(__FILE__) + file_path
    f = File.new(path, 'r:UTF-8')
    lines = f.readlines
    f.close
    name = lines[1].chomp
    price = lines[7].chomp
    amount = lines[9].chomp
    author = lines[5].chomp
    genre = lines[3].chomp
    self.new(name: name, price: price, amount: amount, author: author, genre: genre)
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

  def self.from_file(file_path)
    path = File.dirname(__FILE__) + file_path
    f = File.new(path, 'r:UTF-8')
    lines = f.readlines
    f.close
    name = lines[1].chomp
    price = lines[7].chomp
    amount = lines[9].chomp
    year = lines[5].chomp
    director = lines[3].chomp
    self.new(name: name, price: price, amount: amount, year: year, director: director)
  end

  def to_s
    "Фильм '#{@name}', #{@year}, реж. - #{@director}, #{@price} руб., (осталось #{@amount})"
  end
end

film1 = Film.from_file('/data/films/1.txt')
film2 = Film.new(name: 'Дурак', price: 390, amount: 1, director: 'Юрий Быков', year: 2014)
book1 = Book.from_file('/data/books/1.txt')

puts 'Вот какие товары у нас есть:'
puts
puts film1
puts film2
puts book1
