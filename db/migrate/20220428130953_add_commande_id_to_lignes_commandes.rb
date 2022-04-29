class AddCommandeIdToLignesCommandes < ActiveRecord::Migration[7.0]
  def change
    add_column :lignes_commandes, :commande_id, :integer
  end
end
