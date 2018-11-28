class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :title
      t.string :role
      t.string :description
      t.integer :difficulty
      t.integer :attack
      t.integer :magic
      t.integer :defense

      t.timestamps
    end
  end
end
