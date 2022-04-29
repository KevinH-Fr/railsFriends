require "application_system_test_case"

class LignesCommandesTest < ApplicationSystemTestCase
  setup do
    @lignes_commande = lignes_commandes(:one)
  end

  test "visiting the index" do
    visit lignes_commandes_url
    assert_selector "h1", text: "Lignes commandes"
  end

  test "should create lignes commande" do
    visit lignes_commandes_url
    click_on "New lignes commande"

    fill_in "Commentaires", with: @lignes_commande.commentaires
    fill_in "Nom", with: @lignes_commande.nom
    fill_in "Prix", with: @lignes_commande.prix
    fill_in "Quantite", with: @lignes_commande.quantite
    click_on "Create Lignes commande"

    assert_text "Lignes commande was successfully created"
    click_on "Back"
  end

  test "should update Lignes commande" do
    visit lignes_commande_url(@lignes_commande)
    click_on "Edit this lignes commande", match: :first

    fill_in "Commentaires", with: @lignes_commande.commentaires
    fill_in "Nom", with: @lignes_commande.nom
    fill_in "Prix", with: @lignes_commande.prix
    fill_in "Quantite", with: @lignes_commande.quantite
    click_on "Update Lignes commande"

    assert_text "Lignes commande was successfully updated"
    click_on "Back"
  end

  test "should destroy Lignes commande" do
    visit lignes_commande_url(@lignes_commande)
    click_on "Destroy this lignes commande", match: :first

    assert_text "Lignes commande was successfully destroyed"
  end
end
