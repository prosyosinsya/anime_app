require 'rails_helper'

RSpec.describe "Animes", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/animes/new"
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET /edit" do
  #   it "returns http success" do
  #     get "/animes/edit"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
