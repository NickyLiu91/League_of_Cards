class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :title
      t.string :role
      t.string :description
      t.string :image
      t.string :rarity
      t.string :cardtype
      t.string :effect
      t.integer :attack
      t.integer :magic
      t.integer :defense
      t.integer :quantity
      t.integer :key
      t.integer :player_id

      t.timestamps
    end
  end
end
