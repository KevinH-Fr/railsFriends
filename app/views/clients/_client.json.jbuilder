json.extract! client, :id, :nom, :prenom, :telephone, :mail, :created_at, :updated_at
json.url client_url(client, format: :json)
