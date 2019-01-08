class AddTypeAndEffectAndTargetToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :cardtype, :string
    add_column :cards, :effect, :string
    add_column :cards, :target, :integer
  end
end
