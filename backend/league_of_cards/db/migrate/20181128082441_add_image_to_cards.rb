class AddImageToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :image, :string
  end
end
