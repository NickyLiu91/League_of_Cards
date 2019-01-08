class AddTypeAndEffectAndTargetToAllCards < ActiveRecord::Migration[5.2]
  def change
    add_column :allcards, :cardtype, :string
    add_column :allcards, :effect, :string
    add_column :allcards, :target, :integer
  end
end
