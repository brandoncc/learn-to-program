puts 'Hello, I am going to tell you all of the leap years between two given years.'
puts 'What year would you like to start with?'
start_year = gets.chomp.to_i
puts 'What year would you like to end with?'
end_year = gets.chomp.to_i
leap_years = Array.new

(start_year..end_year).each do |year|
  if year%4 == 0 && (year%100 != 0 || year%400 == 0)
    leap_years.push(year)
  end
end

puts ''

if leap_years.length > 0
  puts 'Here is your list:'
  leap_years.each { |year| puts year.to_s }
else
  puts "Sorry, there were no leap years between #{start_year} and #{end_year}"
end
