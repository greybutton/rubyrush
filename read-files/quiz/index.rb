current_path = File.dirname(__FILE__)

questions_file = File.new(current_path + '/data/questions.txt', 'r:UTF-8')
answers_file = File.new(current_path + '/data/answers.txt', 'r:UTF-8')

questions = questions_file.readlines
answers = answers_file.readlines

questions_file.close
answers_file.close

puts 'Мини-викторина. Ответьте на вопросы.'

correct_answers = 0
i = 0
while i < questions.size
  puts questions[i]
  user_answer = STDIN.gets.encode('UTF-8').chomp
  if user_answer == answers[i]
    correct_answers += 1
    puts 'Верный ответ!'
  else
    puts "Неправильно. Правильный ответ: #{answers[i]}"
  end
  i += 1
end

puts "У вас #{correct_answers} правильных ответов из #{questions.size}"
