def wedding_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']
  left = number

  # handle quadrillions 1,000,000,000,000,000
  write = left/1_000_000_000_000_000
  left = left - write*1_000_000_000_000_000
  if write > 0
    quadrillions = wedding_number write
    num_string = num_string + quadrillions + ' quadrillion'
    num_string += ' and ' if left > 0
  end
  # handle trillions 1,000,000,000,000
  write = left/1_000_000_000_000
  left = left - write*1_000_000_000_000
  if write > 0
    trillions = wedding_number write
    num_string = num_string + trillions + ' trillion'
    num_string += ' and ' if left > 0
  end
  # handle billions 1,000,000,000
  write = left/1_000_000_000
  left = left - write*1_000_000_000
  if write > 0
    billions = wedding_number write
    num_string = num_string + billions + ' billion'
    num_string += ' and ' if left > 0
  end
  # handle millions 1,000,000
  write = left/1_000_000
  left = left - write*1_000_000
  if write > 0
    millions = wedding_number write
    num_string = num_string + millions + ' million'
    num_string += ' and ' if left > 0
  end
  # handle thousands 1,000
  write = left/1_000
  left = left - write*1_000
  if write > 0
    thousands = wedding_number write
    num_string = num_string + thousands + ' thousand'
    num_string += ' and ' if left > 0
  end
  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.
  if write > 0
    # Now here's the recursion:
    hundreds = wedding_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' and '
    end
  end
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + ' and '
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  # Now we just return "num_string"...
  num_string
end
puts wedding_number( 0)
puts wedding_number( 9)
puts wedding_number( 10)
puts wedding_number( 11)
puts wedding_number( 17)
puts wedding_number( 32)
puts wedding_number( 88)
puts wedding_number( 99)
puts wedding_number(100)
puts wedding_number(101)
puts wedding_number(234)
puts wedding_number(3211)
puts wedding_number(999999)
puts wedding_number(1000000000000)
puts wedding_number(11111111111111)
