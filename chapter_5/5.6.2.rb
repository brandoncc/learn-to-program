puts 'What is your favorite number?'
fav_num = gets.chomp.to_i
recommended_num = fav_num + 1
puts 'While ' + fav_num.to_s + ' is a great choice, may I recommend ' + recommended_num.to_s + ' as a possible second option?'