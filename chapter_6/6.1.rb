var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP  A magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

# puts 'What is your full name?'
# name = gets.chomp
# puts 'Did you know there are ' + name.length.to_s + ' characters'
# puts'in your name, ' + name + '?'

# puts 'What is your first name?'
# first_name = gets.chomp
# puts  'What is your middle name?'
# middle_name = gets.chomp
# puts 'What is your last name?'
# last_name = gets.chomp
# total_letters = first_name.length + middle_name.length + last_name.length

# puts 'Did you know that there are ' + total_letters.to_s + ' letters in your name, ' + first_name + ' ' + middle_name + ' ' + last_name + '?'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

line_width = 50
puts(               'Old Mother Hubbard'.center(line_width))
puts(              'Sat in her cupboard'.center(line_width))
puts(       'Eating her curds and whey,'.center(line_width))
puts(         'When along came a spider'.center(line_width))
puts(          'Who sat down beside her'.center(line_width))
puts('And scared her poor shoe dog away'.center(line_width))

line_width = 40
str = '--> text <--'
puts(str.ljust( line_width))
puts(str.center(line_width))
puts(str.rjust( line_width))
puts(str.ljust( line_width) + str.rjust(line_width/2))
