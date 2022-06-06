class ProduitsController < ApplicationController
  
  before_action :set_produit, only: %i[ show edit update destroy ]

  def index
    @produits = Produit.all
    @produit = Produit.new
    
    # byebug
   # @produits = Produit.search(params[:produit])

    def self.search(search)
      if search
        produits = Produit.all
        produits = produits.where(taille: search[:":taille"][","])
        return produits
      else
        Produit.all
      end
    end
 
  end

  def show
    @produit = Produit.find(params[:id])
  end

  def new
    @produit = Produit.new
  end

  def edit
  end

  def create
    @produit = Produit.new(produit_params)

    respond_to do |format|
      if @produit.save
        format.html { redirect_to produit_url(@produit), notice: "Produit was successfully created." }
        format.json { render :show, status: :created, location: @produit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
 
    respond_to do |format|
      if @produit.update(produit_params)
        format.html { redirect_to produit_url(@produit), notice: "Produit was successfully updated." }
        format.json { render :show, status: :ok, location: @produit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @produit = Produit.find(params[:id])
    @produit.destroy

    respond_to do |format|
      format.html { redirect_to produits_url, notice: "Produit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produit
      
        @produit = Produit.find(params[:id])
       
    end

    def set_commande
      unless params[:commande_id].nil? 
        @commande = Commande.find(params[:commande_id])
      end
    end

    # Only allow a list of trusted parameters through.
    def produit_params
      
      params.require(:produit).permit(:nom, :description, :prix, :quantite, :taille, :categorie, :image)
    end

end
