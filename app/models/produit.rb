class Produit < ApplicationRecord
    has_one_attached :image # lier une image produit
end
