require 'rails_helper'

RSpec.describe "Lists", type: :request do
  describe "GET /lists" do
    it "retorna status 200" do
      get lists_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST /lists" do
    it "cria uma nova lista" do
      expect {
        post lists_path, params: { list: { title: "Nova lista" } }
      }.to change(List, :count).by(1)
    end
  end
end
