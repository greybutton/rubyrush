current_path = File.dirname(__FILE__)
f = File.new(current_path + '/hello.txt', 'w:UTF-8')
f.puts('Hello, file!')
f.close
