require 'spec_helper'
require './lib/game_of_life'

RSpec.describe GameOfLife do

  before(:example) do
    @game_of_life = GameOfLife.new
  end

  it "live cell with fewer than two live neighbours dies" do
    expect(@game_of_life.alive_in_next_gen?(1, true)).to be_falsy
  end

  it "live cell with two or three live neighbours lives on to the next generation" do
    expect(@game_of_life.alive_in_next_gen?(2, true)).to be_truthy
    expect(@game_of_life.alive_in_next_gen?(3, true)).to be_truthy
  end

  it "live cell with more than three live neighbours dies" do
    expect(@game_of_life.alive_in_next_gen?(4, true)).to be_falsy
  end

  it "dead cell with exactly three live neighbours becomes a live cell" do
    expect(@game_of_life.alive_in_next_gen?(3, false)).to be_truthy
  end
  
end
