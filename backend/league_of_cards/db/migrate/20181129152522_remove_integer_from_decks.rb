class RemoveIntegerFromDecks < ActiveRecord::Migration[5.2]
  def change
    remove_column :decks, :integer, :string
  end
end
