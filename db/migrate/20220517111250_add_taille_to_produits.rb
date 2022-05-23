class AddTailleToProduits < ActiveRecord::Migration[7.0]
  def change
    add_column :produits, :taille, :string
  end
end
