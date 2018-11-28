class ChangeDifficultyToRarityOnCards < ActiveRecord::Migration[5.2]
  def change
    rename_column :cards, :difficulty, :rarity
  end
end
