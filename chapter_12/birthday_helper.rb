# parse birthdays
birthdays = {}
text      =File.open('birthdays.txt').read
text.gsub!(/\r\n?/, "\n")
text.each_line do |line|
  match_data                    = line.match(/^(?<name>[^,]*),\s*(?<month>[^\s]*)\s+(?<day>[^,]*),\s*(?<year>[^\s]*)\s*$/)
  birthdays[match_data['name']] = Time.local(match_data['year'], match_data['month'], match_data['day'])
end

puts 'Hello, what is your name?'
user_name = gets.chomp

if birthdays.has_key?(user_name)
  puts "#{user_name}, I show #{birthdays[user_name].strftime('%m/%d/%Y')} as your birthday."
else
  puts "Sorry #{user_name}, I do not have your birthday in my records."
end