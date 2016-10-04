require 'rails_helper'

RSpec.describe Usuario, type: :model do
  context "Validade de um usuário" do
    it "Usuário válido (cadastrado com facebook)" do
        usuario = Usuario.new
        usuario.name = "Jack"
        usuario.email = "jack@gmail.com"
        usuario.access_token = "JkQsjj"
        usuario.status = true
        usuario.uid = 3423542
        usuario.user_type = 2
        usuario.provider = "facebook"
        expect(usuario.valid?).to be_truthy
    end
    
    it "Usuário válido (cadastrado sem facebook)" do
        usuario = Usuario.new
        usuario.name = "Jack"
        usuario.email = "jack@gmail.com"
        usuario.access_token = "JkQsjj"
        usuario.status = true
        usuario.user_type = 2
        expect(usuario.valid?).to be_truthy
    end
    
    it "Usuário inválido (sem email)" do
      usuario = Usuario.new
      usuario.name = "Jack"
      usuario.access_token = "JkQsjj"
      usuario.status = true
      usuario.uid = 3423542
      usuario.user_type = 2
      usuario.provider = "facebook"
      expect(usuario.valid?).to be_falsey
    end
    
    it "Usuário inválido (cadastrado pelo facebook sem u.id)" do
      usuario = Usuario.new
      usuario.name = "Jack"
      usuario.access_token = "JkQsjj"
      usuario.status = true
      usuario.user_type = 2
      usuario.provider = "facebook"
      expect(usuario.valid?).to be_falsey
    end
    
    it "Usuário inválido (sem nome)" do
        usuario = Usuario.new
        usuario.email = "jack@gmail.com"
        usuario.access_token = "JkQsjj"
        usuario.status = true
        usuario.user_type = 2
        expect(usuario.valid?).to be_falsey
    end
    
    it "Usuário inválido (sem senha)" do
        usuario = Usuario.new
        usuario.name = "Jack"
        usuario.email = "jack@gmail.com"
        usuario.status = true
        usuario.user_type = 2
        expect(usuario.valid?).to be_falsey
    end
    
    it "Usuário inválido (tipo inválido)" do
        usuario = Usuario.new
        usuario.name = "Jack"
        usuario.email = "jack@gmail.com"
        usuario.access_token = "JkQsjj"
        usuario.status = true
        usuario.uid = 3423542
        usuario.user_type = 3423534
        usuario.provider = "facebook"
        expect(usuario.valid?).to be_falsey
    end
    
  end
  
end
