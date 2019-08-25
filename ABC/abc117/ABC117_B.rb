N = gets.to_i
L = gets.split.map(&:to_i).sort

puts L[-1] < L.inject(:+)-L[-1] ? 'Yes' : 'No'
