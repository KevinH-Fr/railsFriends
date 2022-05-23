class AddPrixToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :prix, :decimal
  end
end
