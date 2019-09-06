require 'time'
sec = gets.to_i
puts (Time.parse("1/1") + sec).strftime("%H:%M:%S")
