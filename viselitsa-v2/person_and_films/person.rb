class Person
  attr_reader :name
  attr_accessor :favorite_film

  def initialize(name)
    @name = name
    @favorite_film = {}
  end
end
