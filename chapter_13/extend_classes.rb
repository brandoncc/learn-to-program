my_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class Array
  def shuffle
    original_array = self.dup
    new_array      = []

    while original_array.size > 0
      new_array << original_array.delete_at(rand(original_array.size))
    end

    if self.sort == new_array.sort
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
end

my_numbers.shuffle

class Fixnum
  def to_roman
    roman_numerals    = ''
    number_to_convert = self

    [["M", 1000], ["CM", 900], ["D", 500], ["C", 100], ["XC", 90], ["LXXX", 80], ["LXX", 70], ["LX", 60], ["L", 50],
     ["XL", 40], ["XXX", 30], ["XX", 20], ["XIX", 19], ["XVIII", 18], ["XVII", 17], ["XVI", 16], ["XV", 15],
     ["XIV", 14], ["XIII", 13], ["XII", 12], ["XI", 11], ["X", 10], ["IX", 9], ["VIII", 8], ["VII", 7], ["VI", 6],
     ["V", 5], ["IV", 4], ["III", 3], ["II", 2], ["I", 1]].each do |e|
      while number_to_convert / e[1] > 0
        number_to_convert -= e[1].to_i
        roman_numerals    = roman_numerals.to_s + e[0].to_s
      end
    end

    roman_numerals
  end

  def factorial
    (1..self).inject(:*)
  end
end

puts 'Enter a number and I will convert it to old-school roman numerals'
number = gets.chomp.to_i


puts 'The roman numeral version is: ' + number.to_roman

puts "The factorial of 4 is: #{4.factorial.to_s}"
puts "The factorial of 10 is: #{10.factorial.to_s}"
