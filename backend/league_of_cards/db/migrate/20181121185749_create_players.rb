class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :image
      t.string :password_digest
      t.string :level
      t.string :background
      t.string :preduel
      t.integer :dialogue
      t.integer :gold
      t.integer :defeated_id
      t.boolean :completed
      t.boolean :computer

      t.timestamps
    end
  end
end
