require 'rails_helper'

RSpec.describe Guess, type: :model do
  context "Validade de um palpite" do
    it "palpite válido (convite em aberto)" do
        guess = Guess.new
        guess.bet_id = 1
        guess.usuario_id = 1
        guess.guess_status = 0
        expect(guess.valid?).to be_truthy
    end
    
    it "palpite válido (convite negado ou removido da aposta)" do
        guess = Guess.new
        guess.bet_id = 1
        guess.usuario_id = 1
        guess.guess_status = 1
        expect(guess.valid?).to be_truthy
    end
    
    it "palpite válido (convite aceito)" do
        guess = Guess.new
        guess.bet_id = 1
        guess.usuario_id = 1
        guess.guess_status = 2
        guess.guess_text = "Vai cair"
        expect(guess.valid?).to be_truthy
    end
    
    it "palpite inválido (sem id aposta)" do
        guess = Guess.new
        guess.usuario_id = 1
        guess.guess_status = 2
        guess.guess_text = "Vai cair"
        expect(guess.valid?).to be_falsey
    end
    
    it "palpite inválido (sem id usuario)" do
        guess = Guess.new
        guess.bet_id = 1
        guess.guess_status = 2
        guess.guess_text = "Vai cair"
        expect(guess.valid?).to be_falsey
    end
    
    it "palpite inválido (sem status do palpite)" do
        guess = Guess.new
        guess.bet_id = 1
        guess.usuario_id = 1
        guess.guess_text = "Vai cair"
        expect(guess.valid?).to be_falsey
    end
    
    it "palpite inválido (sem palpite)" do
        guess = Guess.new
        guess.bet_id = 1
        guess.usuario_id = 1
        guess.guess_status = 2
        expect(guess.valid?).to be_falsey
    end
    
    it "palpite inválido (texto em aposta id)" do
        guess = Guess.new
        guess.bet_id = "alou"
        guess.usuario_id = 1
        guess.guess_status = 2
        guess.guess_text = "Vai cair"
        expect(guess.valid?).to be_falsey
    end
    
    it "palpite inválido (texto em usuario id)" do
        guess = Guess.new
        guess.bet_id = 1
        guess.usuario_id = "alou"
        guess.guess_status = 2
        guess.guess_text = "Vai cair"
        expect(guess.valid?).to be_falsey
    end
    
    it "palpite inválido (texto em status)" do
        guess = Guess.new
        guess.bet_id = 1
        guess.usuario_id = 1
        guess.guess_status = "aloualoualou"
        guess.guess_text = "Não vai cair"
        expect(guess.valid?).to be_falsey
    end
    
  end
end
    