require 'pry'
# A smaller number in front of a larger number means subtraction, all else means addition.
# For example, IV means 4, VI means 6.

# You would not put more than one smaller number in front of a larger number to subtract.
# For example, IIV would not mean 3.

# You must separate ones, tens, hundreds, and thousands as separate items.
# That means that 99 is XCIX, 90 + 9, but never should be written as IC.
# Similarly, 999 cannot be IM and 1999 cannot be MIM.

# I = The numeral one. II is two, III is three. You seldom see IIII as 4, since IV can also mean 4,
#     plus its shorter to write.
# V = The numeral 5. IV is 4, VI is 6, VII is 7, VIII is 8.
# X = The numeral 10. IX is 9, XI is 11, etc.
# L = The numeral 50. XL would be 40. 	The numeral 50. XL would be 40.
# C = The numeral 100. Think of Century having a hundred years. C is short for the Latin word Centum,
#     but that's not very easy to remember.
# D = The numeral 500.
                                    # M = The numeral 1000.

@letters = %w(I V X L C D M)
@values  = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}

def is_largest_value string, val
  is_largest     = true
  larger_letters = @letters[@letters.index(val)+1..-1]

  string.each_char do |l|
    is_largest = false if larger_letters.include?(l)
  end
  is_largest
end

def roman_to_integer(string_to_convert)
  roman              = string_to_convert.dup
  converted_integer  = 0
  amount_to_subtract = 0

  # check if first is not largest (needs subtraction)
  # add if it is, pass it to recursive run if it isn't

  roman.chars.each_with_index do |numeral, index|
    case numeral
      when 'M'
        converted_integer  += 1000 - amount_to_subtract
        amount_to_subtract = 0
      else
        if is_largest_value(roman[index..-1], numeral)
          converted_integer  += (@values[numeral] - amount_to_subtract)
          amount_to_subtract = 0
        else
          amount_to_subtract += @values[numeral]
        end
    end
  end

  # First version
  #while roman.length > 0
  #  case
  #    when roman[0] == 'M'
  #      converted_integer += 1000
  #      shift_string(roman)
  #    when roman.include?('M')
  #      amount_to_subtract = 0
  #      while roman[0] != 'M'
  #        amount_to_subtract += @values[roman[0]]
  #        shift_string(roman)
  #      end
  #
  #      # get rid of the M
  #      shift_string(roman)
  #      converted_integer += (1000-amount_to_subtract)
  #    when roman[0] == 'D'
  #      converted_integer += 500
  #      shift_string(roman)
  #    when roman.include?('D')
  #      amount_to_subtract = 0
  #      while roman[0] != 'D'
  #        amount_to_subtract += @values[roman[0]]
  #        shift_string(roman)
  #      end
  #
  #      # get rid of the M
  #      shift_string(roman)
  #      converted_integer += (500-amount_to_subtract)
  #    when roman[0] == 'C'
  #      converted_integer += 100
  #      shift_string(roman)
  #    when roman.include?('C')
  #      amount_to_subtract = 0
  #      while roman[0] != 'C'
  #        amount_to_subtract += @values[roman[0]]
  #        shift_string(roman)
  #      end
  #
  #      # get rid of the M
  #      shift_string(roman)
  #      converted_integer += (100-amount_to_subtract)
  #    when roman[0] == 'L'
  #      converted_integer += 50
  #      shift_string(roman)
  #    when roman.include?('L')
  #      amount_to_subtract = 0
  #      while roman[0] != 'L'
  #        amount_to_subtract += @values[roman[0]]
  #        shift_string(roman)
  #      end
  #
  #      # get rid of the M
  #      shift_string(roman)
  #      converted_integer += (50-amount_to_subtract)
  #    when roman[0] == 'X'
  #      converted_integer += 10
  #      shift_string(roman)
  #    when roman.include?('X')
  #      amount_to_subtract = 0
  #      while roman[0] != 'X'
  #        amount_to_subtract += @values[roman[0]]
  #        shift_string(roman)
  #      end
  #
  #      # get rid of the M
  #      shift_string(roman)
  #      converted_integer += (10-amount_to_subtract)
  #    when roman[0] == 'V'
  #      converted_integer += 5
  #      shift_string(roman)
  #    when roman.include?('V')
  #      amount_to_subtract = 0
  #      while roman[0] != 'V'
  #        amount_to_subtract += @values[roman[0]]
  #        shift_string(roman)
  #      end
  #
  #      # get rid of the M
  #      shift_string(roman)
  #      converted_integer += (5-amount_to_subtract)
  #    when roman[0] == 'I'
  #      converted_integer += 1
  #      shift_string(roman)
  #    else
  #      binding.pry
  #  end
  #end

  converted_integer
end

def shift_string(string)
  string[0] = ''
end

puts roman_to_integer('CMLXXXI')    # 981
puts roman_to_integer('DCCCLXXXIX') # 889
puts roman_to_integer('DCCLXIII')   # 763
puts roman_to_integer('DCXCIV')     # 694
puts roman_to_integer('DXCI')       # 591
puts roman_to_integer('CDLXXIX')    # 479
puts roman_to_integer('MMMMXIII')   # 4013
puts roman_to_integer('MMDCCXLV') # 2745