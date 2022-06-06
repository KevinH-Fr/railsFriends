class Produit < ApplicationRecord

  #  belongs_to :category
   # before_destroy :not_referenced_by_any_line_item
    
    has_one_attached :image # lier une image produit

   # enum taille: {
    #    small: "Small", 
    #    medium: "Large", 
    #    xl: "XL"
    #}

    enum category: {
        robe: "Robe", 
        costume: "Costume" 
    }
  
    
end
