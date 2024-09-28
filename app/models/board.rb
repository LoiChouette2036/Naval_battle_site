class Board < ApplicationRecord
  belongs_to :game

  after_create :initialize_grid

  def grid
    JSON.parse(self[:grid]) rescue Array.new(10) { Array.new(10, " ") }
  end

  def grid=(value)
    self[:grid] = value.to_json
  end

  private

  def initialize_grid
    self.grid = Array.new(10) { Array.new(10, " ") }
    save  # Ensure it saves the initialized grid correctly
  end
end

# This Board model manages a 10x10 game grid.
# The grid is initialized upon creation using JSON to store the array.
# Removed serialize to avoid issues with argument handling.
# The initialize_grid method sets the grid to a 10x10 array of empty spaces,
# allowing the grid to be retrieved and displayed correctly in the game.
