K,X = gets.split.map(&:to_i)

ans = []
ans << (-200..X).to_a.reverse.first(K).reverse
ans << (X+1..200).first(K-1)

puts ans.join(' ')
