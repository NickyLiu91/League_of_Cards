class AddComputerToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :computer, :boolean
  end
end
