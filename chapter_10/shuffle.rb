my_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def shuffle(array)
  original_array = array.dup
  new_array = []

  while original_array.size > 0
    new_array << original_array.delete_at(rand(original_array.size))
  end

  if array.sort == new_array.sort
    puts 'Your array has been shuffled and verified. Here are your results:'
    puts new_array
  else
    puts 'Uh oh, your array has not been successfully verified after shuffling.'
    puts ''
    puts 'Here is your original array:'
    puts array
    puts ''
    puts 'Here is the shuffled version:'
    puts new_array
  end
end

shuffle(my_numbers)