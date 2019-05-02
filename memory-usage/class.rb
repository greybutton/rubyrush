variable = 1

class MyClass
  def initialize
    @variable = 2
  end

  def check_variables
    puts 'method scope'
    puts "Переменная 'variable': #{defined?(variable)}"
    puts "Переменная '@variable': #{defined?(@variable)}"
  end
end

test = MyClass.new
test.check_variables

puts 'global scope'

puts "Переменная 'variable': #{defined?(variable)}"
puts "Переменная '@variable': #{defined?(@variable)}"
