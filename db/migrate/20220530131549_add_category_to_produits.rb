class AddCategoryToProduits < ActiveRecord::Migration[7.0]
  def change
    add_reference :produits, :category, foreign_key: true
  end
end
