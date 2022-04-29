class CreateLignesCommandes < ActiveRecord::Migration[7.0]
  def change
    create_table :lignes_commandes do |t|
      t.string :nom
      t.integer :quantite
      t.decimal :prix
      t.text :commentaires

      t.timestamps
    end
  end
end
