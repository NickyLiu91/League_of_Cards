class FixIdName < ActiveRecord::Migration[5.2]
  def change
    rename_column :collections, :deck_id, :card_id
  end
end
