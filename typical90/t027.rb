N = gets.to_i
S = N.times.map { gets.chomp }

exists = Hash.new(false)
N.times do |i|
  if !exists[S[i]]
    puts i+1
    exists[S[i]] = true
  end
end
