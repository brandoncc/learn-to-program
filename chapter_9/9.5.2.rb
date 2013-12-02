puts 'Enter a number and I will convert it to old-school roman numerals'
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

[["M", 1000], ["D", 500], ["C", 100], ["L", 50], ["X", 10], ["V", 5], ["I", 1]].each do |e|
  roman_numerals, number_to_convert = build_roman_numerals([number_to_convert, roman_numerals, e[0], e[1]])
end

puts 'The roman numeral version is: ' + roman_numerals
