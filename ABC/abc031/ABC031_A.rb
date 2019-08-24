A,D = gets.split.map(&:to_i)
puts [A,D].max * ([A,D].min + 1)
