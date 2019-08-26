S = gets.chomp

# a-zを表す配列に出現情報を記録していく方が早い(O(N))
('a'..'z').each do |c|
  unless S.include?(c)
    puts c
    exit
  end
end
puts 'None'
