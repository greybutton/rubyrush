class Product
  attr_reader :name, :price, :amount

  def initialize(name, price, amount)
    @name = name
    @price = price
    @amount = amount
  end
end

class Book < Product
end

class Film < Product
end

film = Film.new('Леон', 290, 1)
puts "Фильм #{film.name} стоит #{film.price} руб."
