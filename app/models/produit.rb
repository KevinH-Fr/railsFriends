class Produit < ApplicationRecord

    before_destroy :not_referenced_by_any_line_item
    
    has_one_attached :image # lier une image produit

  
    
end
