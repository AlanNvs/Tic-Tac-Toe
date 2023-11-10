# frozen_string_literal: true

# The class create a grid
class Grid
  attr_accessor :grid

  def initialize
    self.grid = Array.new(3) { Array.new(3) }
  end

  def print_grid
    grid.each { |row| p row }
  end
end

new_grid = Grid.new

new_grid.print_grid
