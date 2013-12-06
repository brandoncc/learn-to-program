require 'pry'
puts 'What year were you born in?'
year = gets.chomp

puts 'What month were you born in?'
month = gets.chomp

puts 'What day were you born on?'
day = gets.chomp

had_birthday_this_year = Time.local(Time.now.year, month, day) < Time.now
age                    = Time.now.year - year.to_i
age -= 1 unless had_birthday_this_year

puts "According to my calculations, I owe you for #{age} years:"

age.times { puts 'SPANK!' }