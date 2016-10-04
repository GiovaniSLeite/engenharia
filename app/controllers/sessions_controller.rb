class SessionsController < ApplicationController
    
    def create
			
		auth = request.env["omniauth.auth"]
		usuario = Usuario.find_or_create_with_omniauth(auth)
		
		if usuario == nil
		    self.failure
		end
		
		session[:user_id] = usuario.id
		redirect_to controller: 'welcome', action: 'painel', :notice => "Voce esta online"
	end

	def failure
		redirect_to controller: 'welcome', action: 'index', :notice => "Falha ao logar"
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "Volte em breve!"
	end
    
end
