temperature = ARGV[0].to_f
season = ARGV[1].to_i

unless temperature
  puts 'Какая сейчас температура?'
  temperature = STDIN.gets.to_f
end

unless season
  puts 'Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)'
  season = STDIN.gets.to_i
end

if season == 1
  if temperature >= 15 && temperature <= 35
    abort 'Скорее идите в парк, соловьи поют!'
  else
    abort 'Сейчас соловьи молчат, греются или прохлаждаются :)'
  end
else
  if temperature >= 22 && temperature <= 30
    abort 'Скорее идите в парк, соловьи поют!'
  else
    abort 'Сейчас соловьи молчат, греются или прохлаждаются :)'
  end
end
