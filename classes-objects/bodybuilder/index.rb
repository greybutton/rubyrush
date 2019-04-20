require_relative 'bodybuilder'

bb = Bodybuilder.new
bb2 = Bodybuilder.new

3.times do
  bb.train('biceps')
  bb2.train('triceps')
end

7.times do
  bb.train('triceps')
  bb2.train('biceps')
end

1.times do
  bb.train('trapezius')
  bb2.train('trapezius')
end

puts 'Первый бодибилдер:'
bb.show

puts 'Второй бодибилдер:'
bb2.show
