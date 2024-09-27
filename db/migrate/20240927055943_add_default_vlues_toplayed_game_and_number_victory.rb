class AddDefaultVluesToplayedGameAndNumberVictory < ActiveRecord::Migration[7.2]
  def change
    change_column_default :profiles, :played_game, 0
    change_column_default :profiles, :number_victory, 0
  end
end
