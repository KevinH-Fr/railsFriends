json.extract! lignes_commande, :id, :nom, :quantite, :prix, :commentaires, :created_at, :updated_at
json.url lignes_commande_url(lignes_commande, format: :json)
