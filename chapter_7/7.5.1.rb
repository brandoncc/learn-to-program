99.downto(1).each do |e| 
  last_bottle = (e == 1)
  two_bottles_left = (e == 2)

  if e == 2
    bottles_left = '1 bottle'
  elsif e == 1
    bottles_left = 'no more bottles'
  else
    bottles_left = "#{e - 1} bottles"
  end

  puts "#{e} bottle#{last_bottle ? '' : 's'} of beer on the wall, #{e} bottle#{last_bottle ? '' : 's'} of beer.  Take #{e == 1 ? 'it' : '1'} down, pass it around, #{bottles_left} of beer on the wall."
end