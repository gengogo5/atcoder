N,X = gets.split.map(&:to_i)
S = gets.chomp

score = X
S.chars.each do |s|
  if s == 'o'
    score += 1
  else
    score -= 1 if score > 0
  end
end
puts score
