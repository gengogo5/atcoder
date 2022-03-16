N = gets.to_i

price = (1.08 * N).to_i

if price < 206
  puts 'Yay!'
elsif price == 206
  puts 'so-so'
else
  puts ':('
end