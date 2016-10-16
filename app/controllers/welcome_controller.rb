class WelcomeController < ApplicationController
  def index
    @usuario = Usuario.new
  end
  
  def painel
    if session[:user_id] == nil
			redirect_to action: 'index', :notice => "Por favor efetue o login"
    end
  end
end