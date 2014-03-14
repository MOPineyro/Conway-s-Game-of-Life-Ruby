require 'grid'

class Cell
  attr_reader :x, :y, :life, :cell_neighbors
  def initialize(x, y)
    @x = x
    @y = y
    @life = false
    @cell_neighbors = []
  end

  def kill
    @life = false
  end

  def give_life
    @life = true
  end

  def anybody_out_there
    @living_neighbors = []
    Grid.spaces.each do |cell|
      if cell.x == self.x-1  || cell.x == self.x+1 || cell.x == self.x && cell.life == true
        living_neighbors << cell
      elsif cell.y == self.y-1  || cell.y == self.y+1 || cell.y == self.y && cell.life == true
        living_neighbors << cell
      end
    end
    @living_neighbors
  end

  def birth
    if @living_neighbors.length == 2 || @living_neighbors.length == 3
      give_life
    elsif @living_neighbors.length < 2 || @living_neighbors.length > 3
      kill
    end
  end
end
