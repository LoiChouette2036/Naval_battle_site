class CreateBoards < ActiveRecord::Migration[7.2]
  def change
    create_table :boards do |t|
      t.references :game, null: false, foreign_key: true
      t.text :grid

      t.timestamps
    end
  end
end
