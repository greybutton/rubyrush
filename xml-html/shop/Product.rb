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
