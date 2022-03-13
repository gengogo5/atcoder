V,T,S,D = gets.split.map(&:to_i)

if D.to_f/V < T || S < D.to_f/V
  puts "Yes"
else
  puts "No"
end