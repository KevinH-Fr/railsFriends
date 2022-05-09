class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :nom
      t.references :commande, null: false, foreign_key:{on_delete: :cascade}

      t.timestamps
    end
  end
end
