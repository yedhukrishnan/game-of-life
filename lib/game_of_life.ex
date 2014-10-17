defmodule GameOfLife do
  def alive? cell, neighbour_count do
    (cell && neighbour_count == 2) || neighbour_count == 3
  end

  def alive_neighbour_count [x, y] do
  
  end
end
