S = gets.chomp

find = false
S.chars.each do |c|
  if S.count(c) == 1
    find = true
    puts c
    break
  end
end

puts -1 unless find
