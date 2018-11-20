class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :title
      t.string :type
      t.integer :difficulty
      t.integer :attack
      t.integer :magic
      t.integer :defense
      t.string :description

      t.timestamps
    end
  end
end
