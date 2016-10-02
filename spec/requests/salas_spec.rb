require 'rails_helper'

RSpec.describe "Salas", type: :request do
  describe "GET /salas" do
    it "works! (now write some real specs)" do
      get salas_path
      expect(response).to have_http_status(200)
    end
  end
end
