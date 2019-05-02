class Parent
  attr_reader :name
  def initialize(s)
    @name = s
  end

  def test
    true
  end
end

class Child < Parent
  def test
    false
  end
end

p = Parent.new('Василий Игоревич')
c1 = Child.new('Маша')
c2 = Child.new('Коля')

puts "#{p.name}: #{p.test}"
puts "#{c1.name}: #{c1.test}"
puts "#{c2.name}: #{c2.test}"
