# I was born at 12:07pm on May 15, 1985
my_birth           = Time.local(1985, 5, 15, 12, 7)
one_billion_old_at = my_birth + 10**9

puts "I will be on billion seconds old on #{one_billion_old_at.strftime('%m/%d/%Y at %I:%M%p')}"