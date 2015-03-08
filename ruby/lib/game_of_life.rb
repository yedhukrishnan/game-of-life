class GameOfLife
  attr_accessor :universe

  def initialize
    @universe = Hash.new(false)
  end
  
  def alive_in_next_gen? neighbour_count, alive_in_this_gen
    (alive_in_this_gen && neighbour_count == 2) || neighbour_count == 3
  end

  def neighbour_count cell
    row, col = cell
    neighbour_count = 0
    (row - 1 .. row + 1).each do |r|
      (col - 1 .. col + 1).each do |c|
        unless r == row && c == col
          neighbour_count = neighbour_count + 1 if @universe[[r, c]]
        end
      end
    end
    neighbour_count
  end
end
