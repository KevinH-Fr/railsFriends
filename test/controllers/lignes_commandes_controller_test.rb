require "test_helper"

class LignesCommandesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lignes_commande = lignes_commandes(:one)
  end

  test "should get index" do
    get lignes_commandes_url
    assert_response :success
  end

  test "should get new" do
    get new_lignes_commande_url
    assert_response :success
  end

  test "should create lignes_commande" do
    assert_difference("LignesCommande.count") do
      post lignes_commandes_url, params: { lignes_commande: { commentaires: @lignes_commande.commentaires, nom: @lignes_commande.nom, prix: @lignes_commande.prix, quantite: @lignes_commande.quantite } }
    end

    assert_redirected_to lignes_commande_url(LignesCommande.last)
  end

  test "should show lignes_commande" do
    get lignes_commande_url(@lignes_commande)
    assert_response :success
  end

  test "should get edit" do
    get edit_lignes_commande_url(@lignes_commande)
    assert_response :success
  end

  test "should update lignes_commande" do
    patch lignes_commande_url(@lignes_commande), params: { lignes_commande: { commentaires: @lignes_commande.commentaires, nom: @lignes_commande.nom, prix: @lignes_commande.prix, quantite: @lignes_commande.quantite } }
    assert_redirected_to lignes_commande_url(@lignes_commande)
  end

  test "should destroy lignes_commande" do
    assert_difference("LignesCommande.count", -1) do
      delete lignes_commande_url(@lignes_commande)
    end

    assert_redirected_to lignes_commandes_url
  end
end
