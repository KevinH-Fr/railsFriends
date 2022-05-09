class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "My name is Scott..."
    @about_me2 = "Deuxième paragraphe de texte dans about me..."
  end
  

  def set_commande
    @commande = Commande.find([:commande_id])
	rescue ActiveRecord::RecordNotFound
		@commande = Commande.create
       commande = @commande.id
  end


  def set_client
    @client = Client.find([:client_id])
	rescue ActiveRecord::RecordNotFound
		@client = Client.create
       client = @client.id
  end



end
