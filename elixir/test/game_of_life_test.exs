import GameOfLife

defmodule GameOfLifeTest do
  use ExUnit.Case

  test "live cell with fewer than two live neighbours dies" do
    assert alive?(true, 0) == false
  end

  test "live cell with two neighbours lives on to the next generation" do
    assert alive?(true, 2) == true
  end

  test "live cell with three neighbours lives on to the next generation" do
    assert alive?(true, 3) == true
  end 

  test "live cell with more than three neighbours dies" do
    assert alive?(true, 4) == false
  end

  test "dead cell with exactly three neighbours becomes alive" do
    assert alive?(false, 3) == true
  end

  test "dead cell with neighbour count other than three remains dead" do
    assert alive?(false, 4) == false
    assert alive?(false, 2) == false
  end

  test "returns alive neighbour count for a particular cell" do
    
  end
end
