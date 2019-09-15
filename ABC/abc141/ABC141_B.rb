S = gets.chomp

is_easy = true
S.length.times do |i|
  if i.odd?
    if S[i] == 'R'
      is_easy = false
      break
    end
  end

  if i.even?
    if S[i] == 'L'
      is_easy = false
      break
    end
  end
end

puts is_easy ? 'Yes' : 'No'
