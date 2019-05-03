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
    # path = File.dirname(__FILE__) + file_path
    f = File.new(file_path, 'r:UTF-8')
    lines = f.readlines
    f.close
    name = lines[1].chomp
    price = lines[7].chomp.to_i
    amount = lines[9].chomp.to_i
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
    # path = File.dirname(__FILE__) + file_path
    f = File.new(file_path, 'r:UTF-8')
    lines = f.readlines
    f.close
    name = lines[1].chomp
    price = lines[7].chomp.to_i
    amount = lines[9].chomp.to_i
    year = lines[5].chomp.to_i
    director = lines[3].chomp
    self.new(name: name, price: price, amount: amount, year: year, director: director)
  end

  def to_s
    "Фильм '#{@name}', #{@year}, реж. - #{@director}, #{@price} руб., (осталось #{@amount})"
  end
end

class ProductCollection
  def initialize(collection = [])
    @collection = collection
  end

  def self.from_dir
    collection = []
    film_paths = File.dirname(__FILE__) + '/data/films/*'
    book_paths = File.dirname(__FILE__) + '/data/books/*'
    film_files = Dir[film_paths]
    book_files = Dir[book_paths]
    film_files.each do |path|
      collection << Film.from_file(path)
    end
    book_files.each do |path|
      collection << Book.from_file(path)
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

pc = ProductCollection.from_dir
puts 'sort by price'
puts pc.sort(by: :price).to_a
puts 'sort by amount'
puts pc.sort(by: :amount).to_a
puts 'sort by name'
puts pc.sort(by: :name).to_a
puts 'sort by name, order asc'
puts pc.sort(by: :name, order: :asc).to_a
