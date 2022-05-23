class AddProduitLieToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :produitLie, :string
  end
end
