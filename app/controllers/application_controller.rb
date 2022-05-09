class ApplicationController < ActionController::Base


	before_action :set_theme

def set_theme
  if params[:theme].present?
    theme = params[:theme].to_sym
    # session[:theme] = theme
    cookies[:theme] = theme
    redirect_to(request.referrer || root_path)
  end
end

#include CurrentCart
#before_action :set_cart

before_action :set_commande
before_action :set_client


def set_commande
  @commande = Commande.find([:commande_id])
rescue ActiveRecord::RecordNotFound
 
end

def set_client
  @client = Client.find([:client_id])
rescue ActiveRecord::RecordNotFound
 
end


end
