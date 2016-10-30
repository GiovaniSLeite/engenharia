class Guess < ActiveRecord::Base
    
    validates :bet_id, :usuario_id, :guess_status, presence: true
    validates :guess_text, presence: true, if: :aposta_aceita?
    
    def aposta_aceita?
        guess_status == 2
    end
    
    validates :bet_id, :usuario_id, numericality: { only_integer: true }
end
