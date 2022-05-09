class Commande < ApplicationRecord
   
    belongs_to :client, :optional => true
  #  has_many :lignes_commande, dependent: :destroy
  #  has_many :articles, dependent: :destroy
    has_many :items, dependent: :delete_all
end
