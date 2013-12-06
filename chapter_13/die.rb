class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat(number)
    if (1..6).include?(number)
      @number_showing = number
    else
      puts "No die that I have ever seen has a side with #{number} on it!"
    end
  end
end

my_die = Die.new
puts my_die.showing
my_die.cheat(30)
my_die.cheat(3)
puts my_die.showing