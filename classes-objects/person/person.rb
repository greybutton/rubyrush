class Person
  attr_reader :age

  def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
  end

  def full_name
    if old?
      "#{@first_name} #{@last_name}"
    else
      "#{@first_name}"
    end
  end

  def old?
    @age >= 60
  end
end
