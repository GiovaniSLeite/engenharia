class Sala < ActiveRecord::Base
    
    def cratesala(nome, idOwner)
        
    end 
     
    def expulsaUser()
        
    end 
    
    def addUser()
    end 
    
    def aumentaraposta()
        
    end 
    
    def setNewSalaAdm()
        
    end 
    
    def setSalaImag()
        
    end 
     def self.find_or_create_with_omniauth(auth)
		
		sala = self.find_or_initialize_by(provider: auth.provider, uid: auth.uid)
		
		if sala == nil
			sala.assign_attributes({ name: auth.info.name, email: auth.info.email, photo_url: auth.info.image, access_token: auth.credentials.token, status: true, user_type: "2", data_ingresso: Time.now})
		end
		
		sala
	end
end
