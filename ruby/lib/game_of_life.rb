class GameOfLife
  def alive_in_next_gen? neighbour_count, alive_in_this_gen
    (alive_in_this_gen && neighbour_count == 2) || neighbour_count == 3
  end
end
