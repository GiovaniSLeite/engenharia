require 'rails_helper'

RSpec.describe "Aposta", type: :request do
  describe "GET /aposta" do
    it "works! (now write some real specs)" do
      get aposta_path
      expect(response).to have_http_status(200)
    end
  end
end
