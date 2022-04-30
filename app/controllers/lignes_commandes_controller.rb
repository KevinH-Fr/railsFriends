class LignesCommandesController < ApplicationController
  before_action :set_lignes_commande, only: %i[ show edit update destroy ]

  # GET /lignes_commandes or /lignes_commandes.json
  def index
    @lignes_commandes = LignesCommande.all
  
  end

  # GET /lignes_commandes/1 or /lignes_commandes/1.json
  def show
    @produits = Produit.all
    

  end

  # GET /lignes_commandes/new
  def new
     @produits = Produit.all
    # @produit = Produit.find('1')

    @lignes_commande = LignesCommande.new


  end

  # GET /lignes_commandes/1/edit
  def edit
  end



  # POST /lignes_commandes or /lignes_commandes.json
  def create
    @lignes_commande = LignesCommande.new(lignes_commande_params)

    respond_to do |format|
      if @lignes_commande.save
        format.html { redirect_to lignes_commande_url(@lignes_commande), notice: "Lignes commande was successfully created." }
        format.json { render :show, status: :created, location: @lignes_commande }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lignes_commande.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lignes_commandes/1 or /lignes_commandes/1.json
  def update
    respond_to do |format|
      if @lignes_commande.update(lignes_commande_params)
        format.html { redirect_to lignes_commande_url(@lignes_commande), notice: "Lignes commande was successfully updated." }
        format.json { render :show, status: :ok, location: @lignes_commande }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lignes_commande.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lignes_commandes/1 or /lignes_commandes/1.json
  def destroy
    @lignes_commande.destroy

    respond_to do |format|
      format.html { redirect_to lignes_commandes_url, notice: "Lignes commande was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lignes_commande
      @lignes_commande = LignesCommande.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lignes_commande_params
      params.require(:lignes_commande).permit(:nom, :quantite, :prix, :commentaires, :commande_id)
    end
end
