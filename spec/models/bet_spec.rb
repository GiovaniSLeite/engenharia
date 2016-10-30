require 'rails_helper'

RSpec.describe Bet, type: :model do
  context "Validade da aposta: presença|ausência de campos" do
    it "aposta válida" do
        aposta = Bet.new
        aposta.name = "Fabio vai cair da escada"
        aposta.ownerId = 1
        aposta.category = "Personalizado"
        aposta.room_status = 0 #ativa
        aposta.room_type = 0 #publica|privada
        aposta.stake = 0
        aposta.answer_type = "text" #para verificacao minima
        expect(aposta.valid?).to be_truthy
    end
    
    it "aposta inválida (sem nome)" do
        aposta = Bet.new
        aposta.usuario_id = 1
        aposta.category = "Personalizado"
        aposta.room_status = 0 #ativa
        aposta.room_type = 0 #publica|privada
        aposta.stake = 0
        aposta.answer_type = "text" #para verificacao minima
        expect(aposta.valid?).to be_falsey
    end
    
    it "aposta inválida (sem categoria)" do
        aposta = Bet.new
        aposta.name = "Fabio vai cair da escada"
        aposta.usuario_id = 1
        aposta.room_status = 0 #ativa
        aposta.room_type = 0 #publica|privada
        aposta.stake = 0
        aposta.answer_type = "text" #para verificacao minima
        expect(aposta.valid?).to be_falsey
    end
    
    it "aposta inválida (sem status)" do
        aposta = Bet.new
        aposta.name = "Fabio vai cair da escada"
        aposta.usuario_id = 1
        aposta.category = "Personalizado"
        aposta.room_type = 0 #publica|privada
        aposta.stake = 0
        aposta.answer_type = "text" #para verificacao minima
        expect(aposta.valid?).to be_falsey
    end
    
    it "aposta inválida (sem tipo)" do
        aposta = Bet.new
        aposta.name = "Fabio vai cair da escada"
        aposta.usuario_id = 1
        aposta.category = "Personalizado"
        aposta.room_status = 0 #ativa
        aposta.stake = 0
        aposta.answer_type = "text" #para verificacao minima
        expect(aposta.valid?).to be_falsey
    end
    
    it "aposta inválida (sem valor)" do
        aposta = Bet.new
        aposta.name = "Fabio vai cair da escada"
        aposta.usuario_id = 1
        aposta.category = "Personalizado"
        aposta.room_status = 0 #ativa
        aposta.room_type = 0 #publica|privada
        aposta.answer_type = "text" #para verificacao minima
        expect(aposta.valid?).to be_falsey
    end
  end
  context "Validade da aposta: valores inválidos" do
    it "aposta inválida (status com texto)" do
      aposta = Bet.new
      aposta.name = "Fabio vai cair da escada"
      aposta.usuario_id = 1
      aposta.category = "Personalizado"
      aposta.room_status = "abc" #ativa
      aposta.room_type = 0 #publica|privada
      aposta.stake = 0
      aposta.answer_type = "text" #para verificacao minima
      expect(aposta.valid?).to be_falsey
    end
    
    it "aposta inválida (room type com texto)" do
      aposta = Bet.new
      aposta.name = "Fabio vai cair da escada"
      aposta.usuario_id = 1
      aposta.category = "Personalizado"
      aposta.room_status = 1 #ativa
      aposta.room_type = "abc" #publica|privada
      aposta.stake = 0
      aposta.answer_type = "text" #para verificacao minima
      expect(aposta.valid?).to be_falsey
    end
    
    it "aposta inválida (stake com texto)" do
      aposta = Bet.new
      aposta.name = "Fabio vai cair da escada"
      aposta.usuario_id = 1
      aposta.category = "Personalizado"
      aposta.room_status = 0 #ativa
      aposta.room_type = 0 #publica|privada
      aposta.stake = "abc"
      aposta.answer_type = "text" #para verificacao minima
      expect(aposta.valid?).to be_falsey
    end

    
  end
    
  
end