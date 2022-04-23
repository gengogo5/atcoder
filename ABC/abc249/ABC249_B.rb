S = gets.chomp

subarashi = true

subarashi = false if S.match(/[A-Z]/).nil?
subarashi = false if S.match(/[a-z]/).nil?
subarashi = false if S.length != S.chars.uniq.size

puts subarashi ? 'Yes' : 'No'