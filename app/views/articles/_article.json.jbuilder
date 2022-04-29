json.extract! article, :id, :nom, :description, :categorie, :couleur, :prix, :created_at, :updated_at
json.url article_url(article, format: :json)
