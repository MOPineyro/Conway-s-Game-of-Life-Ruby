require 'rspec'
require 'game'
require 'Grid'
require 'Cell'

describe 'game' do
  describe '#initiate_life' do
    it "makes life true for the inputted space" do
      test_game = Game.new
      test_game.initiate_life(1,1)
      Grid.spaces[0].life.should eq true
    end
  end
end

describe 'Cell' do
  describe '#anybody_out_there' do
    it "finds all neighbors that are alive" do
      test_game = Game.new
      test_game.initiate_life(1,1)
      test_game.initiate_life(1,2)
      test_game.initiate_life(2,2)
      Grid.spaces[0].anybody_out_there
      Grid.spaces[0].living_neighbors.length.should eq 2
    end
  end
end
