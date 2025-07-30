require 'rails_helper'

RSpec.describe "Items", type: :request do
  let!(:list) { create(:list) }

  describe "POST /lists/:list_id/items" do
    it "cria um novo item" do
      expect {
        post list_items_path(list), params: { item: { content: "Novo item" } }
      }.to change(Item, :count).by(1)
    end
  end
end
