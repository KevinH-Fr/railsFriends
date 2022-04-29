class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :nom
      t.string :description
      t.string :categorie
      t.string :couleur
      t.decimal :prix

      t.timestamps
    end
  end
end
