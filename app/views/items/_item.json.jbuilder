json.extract! item, :id, :nom, :commande_id, :created_at, :updated_at
json.url item_url(item, format: :json)
