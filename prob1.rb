require 'csv'
filename = 'dataa.csv'
data = CSV.read(filename, headers: true).map(&:to_h)
puts "["
puts "  #{data[0].inspect}"
puts
puts "  #{data[1].inspect}"
puts "]"
