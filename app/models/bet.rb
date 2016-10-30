class Bet < ActiveRecord::Base
    
    validates :name, :ownerId, :category, :room_status, :room_type, :stake, :answer_type, presence: true
    
    #os testes de tipo de campo sao garantidos pela gema
end
