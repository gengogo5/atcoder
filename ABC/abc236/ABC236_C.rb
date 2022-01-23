N,M = gets.split.map(&:to_i)
S = gets.chomp.split(" ")
T = gets.chomp.split(" ")

h = {}
T.each do |t|
  h[t] = 1
end

S.each do |s|
  puts h[s].nil? ? 'No' : 'Yes'
end
