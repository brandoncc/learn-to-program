puts 'What do you have to say for yourself, grandchild?'
bye_count = 0

while true
  response = gets.chomp

  if response == 'BYE'
    puts 'NO THANKS, I DON\'T LIKE PIE!'
    bye_count += 1

    break if bye_count > 2
  elsif response == response.upcase
    puts "NO, NOT SINCE #{rand(1930..1950)}!"

    bye_count = 0
  else
    puts 'HUH?!  SPEAK UP, SONNY!'
    
    bye_count = 0
  end
end