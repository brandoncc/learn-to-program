def log(description, &block)
  puts "Beginning \"#{description}\"..."
  response = block.call
  puts "...\"#{description}\" finished, returning: #{response}"
end

log('outer block') do
  log('some little block') do
    5
  end
  log('yet another block') do
    'I like Thai food!'
  end

  false
end