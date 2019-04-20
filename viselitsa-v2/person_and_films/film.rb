class Film
  attr_reader :director_name, :title
  
  def initialize(director_name, title)
    @director_name = director_name
    @title = title
  end
end
