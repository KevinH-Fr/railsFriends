json.extract! produit, :id, :nom, :prix, :created_at, :updated_at
json.url produit_url(produit, format: :json)
