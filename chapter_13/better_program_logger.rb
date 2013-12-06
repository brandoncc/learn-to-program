def log(description, &block)
  $nesting_depth = $nesting_depth.nil? ? 0 : $nesting_depth += 1
  indentation    = ' '* $nesting_depth * 2
  puts "#{indentation}Beginning \"#{description}\"..."
  response = block.call
  puts "#{indentation}...\"#{description}\" finished, returning: \n#{indentation}#{response}"
  $nesting_depth = $nesting_depth.zero? ? 0 : $nesting_depth -= 1
end

log('outer block') do
  log('some little block') do
    log('teeny-tiny block') do
      'lots of love'
    end

    42
  end

  log('yet another block') do
    'I love Indian food!'
  end

  true
end