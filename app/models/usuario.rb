class Usuario < ActiveRecord::Base
    
    def self.find_or_create_with_omniauth(auth)
		
		usuario = self.find_or_initialize_by(provider: auth.provider, uid: auth.uid)
		
		usuario.assign_attributes({ name: auth.info.name, email: auth.info.email, photo_url: auth.info.image, access_token: auth.credentials.token, status: true, user_type: "2", data_ingresso: Time.now})
		usuario.save
		
		usuario
	end
    
end
