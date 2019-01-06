class ChangeCardsRarityToString < ActiveRecord::Migration[5.2]
  def change
    change_column :cards, :rarity, :string
  end
end
