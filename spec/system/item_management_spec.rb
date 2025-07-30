require 'rails_helper'

RSpec.describe "Gerenciamento de Itens", type: :system do
  let!(:list) { create(:list) }

  it "permite adicionar item à lista" do
    visit list_path(list)
    fill_in "item_content", with: "Novo item"
    click_button "Adicionar"
    expect(page).to have_content("Novo item")
  end
end
