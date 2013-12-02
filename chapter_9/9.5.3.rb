puts 'Enter a number and I will convert it to modern-style roman numerals'
number_to_convert = gets.chomp.to_i
roman_numerals = ''

# expects array in format [number_to_convert, current_roman_numeral_string, roman_numeral_letter, value]
def build_roman_numerals array
  number_to_convert = array[0]
  roman_numerals = array[1]

  while number_to_convert / array[3] > 0
    number_to_convert -= array[3].to_i
    roman_numerals = roman_numerals.to_s + array[2].to_s
  end

  return roman_numerals, number_to_convert
end 


[["M", 1000], ["D", 500], ["C", 100], ["XC", 90], ["LXXX", 80], ["LXX", 70], ["LX", 60], ["L", 50], ["XL", 40], ["XXX", 30], ["XX", 20], ["XIX", 19], ["XVIII", 18], ["XVII", 17], ["XVI", 16], ["XV", 15], ["XIV", 14], ["XIII", 13], ["XII", 12], ["XI", 11], ["X", 10], ["IX", 9], ["VIII", 8], ["VII", 7], ["VI", 6], ["V", 5], ["IV", 4], ["III", 3], ["II", 2], ["I", 1]].each do |e|
  roman_numerals, number_to_convert = build_roman_numerals([number_to_convert, roman_numerals, e[0], e[1]])
end

puts 'The roman numeral version is: ' + roman_numerals
