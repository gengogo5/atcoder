A,B,C = gets.split.map(&:to_i)
puts C <= B && C >= A ? 'Yes' : 'No'
