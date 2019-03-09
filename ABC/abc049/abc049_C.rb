S = gets.chomp.reverse
T = ''
X = ['dreamer','dream','eraser','erase'].map(&:reverse)


allMatched = false
offset = 0
loop do
  matched = false
  X.each do |x|
    if x == S[offset, x.length]
      if offset+x.length == S.length
        allMatched = true
        break
      end
      matched = true
      offset += x.length
      break
    end
  end
  break if allMatched || !matched
end

if allMatched
  puts 'YES'
else
  puts 'NO'
end

