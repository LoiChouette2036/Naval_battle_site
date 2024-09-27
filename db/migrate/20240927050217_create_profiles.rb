class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :bio
      t.integer :played_game
      t.integer :number_victory

      t.timestamps
    end
  end
end
