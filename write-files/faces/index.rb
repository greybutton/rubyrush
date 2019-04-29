current_path = File.dirname(__FILE__)

forehead_path = current_path + '/data/forehead.txt'
eyes_path = current_path + '/data/eyes.txt'
nose_path = current_path + '/data/nose.txt'
mouth_path = current_path + '/data/mouth.txt'

forehead_file = File.new(forehead_path, 'r:UTF-8')
eyes_file = File.new(eyes_path, 'r:UTF-8')
nose_file = File.new(nose_path, 'r:UTF-8')
mouth_file = File.new(mouth_path, 'r:UTF-8')

forehead = forehead_file.readlines.sample
eyes = eyes_file.readlines.sample
nose = nose_file.readlines.sample
mouth = mouth_file.readlines.sample

forehead_file.close
eyes_file.close
nose_file.close
mouth_file.close

time = Time.now
filename = current_path + 'face ' + time.strftime('%Y.%m.%d %H-%M-%S') + '.txt'

f = File.new(filename, 'w:UTF-8')
f.puts(forehead)
f.puts(eyes)
f.puts(nose)
f.puts(mouth)
f.close
