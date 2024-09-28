class CreateShips < ActiveRecord::Migration[7.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :length
      t.string :orientation
      t.string :coordinates
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
