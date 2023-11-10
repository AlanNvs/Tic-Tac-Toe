# frozen_string_literal: true

require_relative 'grid'
# This class plays the game
class Game
  attr_accessor :grid
  attr_reader :column, :row, :piece

  def initialize
    @grid = Grid.new
  end

  def play
    @i = 0
    loop do
      @i += 1
      select_position
      grid.update_grid(column, row, piece)
      break unless finish_game.nil?
    end
    puts finish_game
  end

  def finish_game
    if grid.winner_o
      'The O player won!'
    elsif grid.winner_x
      'The X player won!'
    end
  end

  def select_position
    puts 'Select a Column:'
    @column = gets.chomp.to_i
    puts 'Select a Row:'
    @row = gets.chomp.to_i
    select_piece
  end

  def select_piece
    @piece = if @i.even?
               'O'
             else
               'X'
             end
  end
end

game = Game.new
game.play
