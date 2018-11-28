class AddQuantityToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :quantity, :integer
  end
end
