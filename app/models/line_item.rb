class LineItem < ApplicationRecord
  belongs_to :produit
  belongs_to :cart

  def total_price
    produit.prix.to_i * quantity
  end
end
