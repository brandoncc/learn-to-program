def hours_passed(&block)
  hours = Time.new.hour
  case
    when hours.zero?
      hours = 12
    when hours > 12
      hours -= 12
  end

  hours.times do
    block.call
  end
end

hours_passed do
  puts 'DONG!'
end