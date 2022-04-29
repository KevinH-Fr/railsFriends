class CreateProduits < ActiveRecord::Migration[7.0]
  def change
    create_table :produits do |t|
      t.string :nom
      t.decimal :prix

      t.timestamps
    end
  end
end
