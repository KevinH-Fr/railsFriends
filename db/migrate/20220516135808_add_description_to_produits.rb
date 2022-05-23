class AddDescriptionToProduits < ActiveRecord::Migration[7.0]
  def change
    add_column :produits, :description, :text
  end
end
