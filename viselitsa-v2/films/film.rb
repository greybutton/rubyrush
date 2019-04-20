class Film
  attr_reader :director_name, :film_title
  
  def initialize(director_name, film_title)
    @director_name = director_name
    @film_title = film_title
  end
end
