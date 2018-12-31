class AddPlayerIdToCard < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :player_id, :integer
  end
end
