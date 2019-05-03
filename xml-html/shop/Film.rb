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
