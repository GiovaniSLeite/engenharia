require 'rails_helper'

RSpec.describe Usuario, type: :model do
  context "Validade de um usuário" do
    it "Usuário válido" do
        usuario = Usuario.new
        usuario.name = "Jack"
        usuario.email = "jack@gmail.com"
        usuario.access_token = "JkQsjj"
        usuario.status = true
        usuario.user_type = 1
        usuario.provider = "Facebook"
        
        expect(usuario.valid?).to be_truthy
    end
  end
  
end
