class AddClientIdToCommandes < ActiveRecord::Migration[7.0]
  def change
    add_column :commandes, :client_id, :integer
    add_index :commandes, :client_id
  end
end
