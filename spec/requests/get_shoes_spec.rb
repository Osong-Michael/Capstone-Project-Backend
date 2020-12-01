require 'rails_helper'

RSpec.describe ShoesController, type: :controller do
  describe "GET #index" do
    before do
      get :index
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "JSON body response contains expected shoe attributes" do
      expect(response.body).to match('[]')
    end
  end
end