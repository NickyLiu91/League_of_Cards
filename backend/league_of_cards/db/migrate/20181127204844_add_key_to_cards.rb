class AddKeyToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :key, :integer
  end
end
