# frozen_string_literal: true

class ExampleReflex < ApplicationReflex

  def toggle
    produit = Produit.find(element.dataset[:id])
    produit.update(updated_at: (produit.updated_at? ? nil : Time.current))
  end 

end
