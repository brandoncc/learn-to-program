class OrangeTree
  def initialize
    @age          = 0
    @height       = 0
    @orange_count = 0
  end

  def height
    puts "This tree is currently #{@height/12} feet, #{@height%12} inches tall."
  end

  def one_year_passes
    @age    += 1
    @height += 16
    @orange_count = @age**3 if @age > 3
  end

  def pick_an_orange
    if @orange_count > 0
      puts 'You picked an orange and ate it, that tasted amazing!'
      @orange_count -= 1
    else
      puts 'Sorry, there are no oranges on this tree today'
    end
  end

  def count_the_oranges
    puts "There are currently #{@orange_count} oranges on this tree."
  end
end

tree = OrangeTree.new
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
