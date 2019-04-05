time = Time.now
day = time.wday
is_week_end = [0, 6].include?(day) # day == 6 || day == 0

if is_week_end
  puts 'Сегодня выходной!'
else
  puts 'Сегодня будний день, за работу!'
end
