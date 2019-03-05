N,Y = gets.split.map(&:to_i)

isBreak = false
result = "-1 -1 -1"
(0..N).each do |i|
  (0..N).each do |j|
    if(i*10000)+(j*5000)+((N-i-j)*1000) == Y && i+j+(N-i-j) == N && (N-i-j) >= 0
      result = "#{i} #{j} #{N-i-j}"
      isBreak = true
      break
    end
  end
  break if isBreak
end

puts result
