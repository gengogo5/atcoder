N = gets.to_i
Sh = {}

count = 0
N.times do
  s = gets.chomp.chars.sort.join
  if Sh.key?(s)
    count += Sh[s] + 1
    Sh[s] += 1
  end
  Sh[s] ||= 0
end

puts count
