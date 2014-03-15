class Game

  attr_reader :grid, :chosen_spaces

  def initialize
    @new_grid = Grid.new
    @chosen_spaces = []
  end

  def initiate_life(chosen_spaces_x, chosen_spaces_y)
    chosen_space = Cell.new(chosen_spaces_x, chosen_spaces_y)
    @chosen_spaces << chosen_space

    @chosen_spaces.each do |element|
      match = Grid.spaces.find_index { |obj| obj.x == element.x && obj.y == element.y}
      Grid.spaces[match].give_life
    end
  end

end
