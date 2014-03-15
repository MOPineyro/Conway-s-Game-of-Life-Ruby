require './lib/Grid'
require './lib/Cell'
require './lib/game'
require 'colorize'

def main_menu
  puts "Welcome to Conway's Game of Life"
  puts "Enter coordinates to begin the game"
  puts "\n"
  puts "Enter x-coordinate:"
  user_input_x = gets.chomp
  # user_input_x.to_i
  puts "Enter y-coordinate:"
  user_input_y = gets.chomp
  # user_input_y.to_i
  new_game = Game.new
  new_game.initiate_life(user_input_x.to_i, user_input_y.to_i)

  prng = Random.new
  num = prng.rand(20)
  num2 = prng.rand(20)
  new_game.initiate_life(num, num2)


  puts "Press enter to begin the game"
  gets
  game
end

def game
  cell_counter = 0
  Grid.spaces.each do |x|
    x.anybody_out_there
    x.birth
    if x.life == true
      print " A ".green
    else
      print " X ".red
    end
    if cell_counter == 19
      print "\n"
      cell_counter = 0
    else
      cell_counter += 1
    end
  end
end

main_menu
