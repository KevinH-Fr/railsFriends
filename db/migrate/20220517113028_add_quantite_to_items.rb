class AddQuantiteToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :quantite, :integer
  end
end
