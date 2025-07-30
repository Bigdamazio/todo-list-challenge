require 'rails_helper'

RSpec.describe "Gerenciamento de Listas", type: :system do
  it "permite criar uma nova lista" do
    visit new_list_path

    fill_in "list_title", with: "Lista Teste"

    click_button "Salvar Lista"

    expect(page).to have_content("Lista Teste")
  end
end
