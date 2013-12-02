puts "Enter as many words as you would like.  When you are finished, leave the line blank and press enter."
responses = Array.new

while true
  response = gets.chomp.strip
  if response.length > 0
    responses.push(response)
  else
    break
  end
end

if responses.length > 0
  responses.sort! do |a, b|
    if a.downcase == b.downcase
      a <=> b
    else
      a.downcase <=> b.downcase
    end
  end
  puts responses
else
  puts 'You didn\'t enter any words.'
end