puts 'Введите email:'
string = STDIN.gets.encode('UTF-8').chomp
def email?(string)
  string =~ /.+@.+/i
end

if email?(string)
  puts 'Это email'
else
  puts 'Это не email'
end
