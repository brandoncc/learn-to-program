words = ['I', 'am', 'sitting', 'at', 'The', 'mall', 'in', 'the', 'food',
         'court', 'waiting', 'Waiting', 'for', 'my', 'girlfriend']

def sort(array_to_sort)
  sorted_array = []
  unsorted_array = array_to_sort.dup

  while unsorted_array.size > 0
    largest_item = 0

    (0..unsorted_array.size-1).each do |index|
      if unsorted_array[index] < unsorted_array[largest_item]
        largest_item = index
      end
    end

    sorted_array << unsorted_array.delete_at(largest_item)
  end

  sorted_array
end

def dictionary_sort(array_to_sort)
  sorted_array = []
  unsorted_array = array_to_sort.dup

  while unsorted_array.size > 0
    largest_item = 0

    (0..unsorted_array.size-1).each do |index|
      case
      when unsorted_array[index].downcase == unsorted_array[largest_item].downcase
        if unsorted_array[index] < unsorted_array[largest_item]
          largest_item = index
        end
      else
        if unsorted_array[index].downcase < unsorted_array[largest_item].downcase
          largest_item = index
        end
      end
    end

    sorted_array << unsorted_array.delete_at(largest_item)
  end

  sorted_array
end

def recursive_sort(array_to_sort, sorted_array = [])
  unsorted_array = array_to_sort.dup
  largest_item = 0

  (0..unsorted_array.size-1).each do |index|
    if unsorted_array[index] < unsorted_array[largest_item]
      largest_item = index
    end
  end

  sorted_array << unsorted_array.delete_at(largest_item)

  if unsorted_array.size > 0
    recursive_sort(unsorted_array, sorted_array)
  else
    sorted_array
  end
end

puts ''
puts 'Result from sort:'
puts sort(words)

puts ''
puts 'Result from recursive_sort:'
puts recursive_sort(words)

puts ''
puts 'Result from dictionary_sort:'
puts dictionary_sort(words)