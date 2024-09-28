class Game < ApplicationRecord
  has_one :board, dependent: :destroy

  # Automatically create a board when a new game is created
  after_create :create_board
end
