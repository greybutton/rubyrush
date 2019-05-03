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
    self.new(name: name, price: price, amount: amount, author: author)
  end

  def to_s
    "Книга '#{@name}', автор - #{@author}, #{@price} руб., (осталось #{@amount})"
  end
end
