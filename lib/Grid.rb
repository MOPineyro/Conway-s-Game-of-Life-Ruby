class Grid
  attr_reader :new_space

  @@spaces = []

  def initialize
    (1..20).each do |x|
      (1..20).each do |y|
         @new_space = Cell.new(x,y)
         @@spaces << @new_space
      end
    end
  end

  def Grid.spaces
    @@spaces
  end

end

# test_grid = Grid.new
# puts test_grid.spaces.each {|x| puts "#{x.x+1}, #{x.y+1}" }
