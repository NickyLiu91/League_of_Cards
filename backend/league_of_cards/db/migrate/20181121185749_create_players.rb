class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :image
      t.string :password_digest
      t.string :level
      t.integer :gold
      t.string :defeated, array: true, default: []
      t.boolean :computer
      t.boolean :completed

      t.timestamps
    end
  end
end
