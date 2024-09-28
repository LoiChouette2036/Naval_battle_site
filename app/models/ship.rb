class Ship < ApplicationRecord
  belongs_to :game

  validates :name, presence: true
  validates :length, presence: true
  validates :orientation, inclusion: { in: %w[horizontal vertical] }
  validates :coordinates, presence: true
end
