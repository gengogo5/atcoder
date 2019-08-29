N,M = gets.split.map(&:to_i)
A = N.times.map { gets.chomp }
B = M.times.map { gets.chomp }

(N-M+1).times do |i|
  (N-M+1).times do |j|
    if M.times.all? { |k| B[k] == A[i+k][j..(M-1+j)] }
      puts 'Yes'
      exit
    end
  end
end
# ここまで来たら不一致
puts 'No'
