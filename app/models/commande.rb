class Commande < ApplicationRecord
   
    belongs_to :client, :optional => true

    has_many :lignes_commande
end
