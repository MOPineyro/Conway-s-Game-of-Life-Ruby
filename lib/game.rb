class Game

  attr_reader :grid, :chosen_spaces

  def initialize
    @grid = []
  end

  def Game.create
    @grid << Grid.new

  end

  def initiate_life(chosen_spaces_x, chosen_spaces_y)
    @chosen_spaces = []
    chosen_space = Cell.new(chosen_spaces_x, chosen_spaces_y)
    @chosen_spaces << chosen_space

    @chosen_spaces.each do |element|
      match = Grid.spaces.find_index { |obj| obj.x == element.x && obj.y == element.y}
      Grid.spaces[match].give_life
    end
  end

  # def find_cell_neighbors
  #   self.grid.spaces.each do |cell|

  # end

end
