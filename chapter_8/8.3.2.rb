data = [[1, 'Getting Started', 1], [2, 'Numbers', 9], [3,'Letters',13]]
line_width = 60

puts 'Table of Contents'.center(line_width)
data.each do |rec|
  puts "Chapter #{rec[0]}: #{rec[1]}".ljust(line_width/2) + "page #{rec[2]}".rjust(line_width/2)
end