class Bodybuilder
  def initialize
    @biceps = 0
    @triceps = 0
    @trapezius = 0
  end

  def train(muscle)
    case muscle
    when 'biceps'
      @biceps += 1
    when 'triceps'
      @triceps += 1
    when 'trapezius'
      @trapezius += 1
    end
  end

  def show
    puts "Бицепсы: #{@biceps}"
    puts "Трицепсы: #{@triceps}"
    puts "Трапеции: #{@trapezius}"
  end
end
