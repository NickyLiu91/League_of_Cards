class CreateAllcards < ActiveRecord::Migration[5.2]
  def change
    create_table :allcards do |t|
      t.integer :key
      t.string :name
      t.string :title
      t.string :role
      t.string :rarity
      t.string :cardtype
      t.string :effect
      t.integer :attack
      t.integer :magic
      t.integer :defense
      t.string :description
      t.string :image
      t.integer :quantity

      t.timestamps
    end
  end
end
