# frozen_string_literal: true

# The class create a grid
class Grid
  attr_accessor :grid, :column_index, :row_index, :char

  def initialize
    self.grid = Array.new(3) { Array.new(3) }
  end

  def update_grid(column_index, row_index, char)
    self.column_index = column_index
    self.row_index = row_index
    self.char = char
    print_grid
  end

  def winner_o
    grid.any? do |row|
      row.all? { |cell| cell == 'O' }
    end
  end

  def winner_x
    grid.any? do |row|
      row.all? { |cell| cell == 'X' }
    end
  end

  def draw
    unless grid.flatten.any? { |cell| cell.nil? }
  end

  protected

  def print_grid
    put_piece
    grid.each { |row| p row }
  end

  def put_piece
    grid[row_index][column_index] = char
  end
end

# game = Grid.new
# game.play(0, 0, 'X')
# game.play(0, 1, 'O')
# game.play(1, 1, 'X')
