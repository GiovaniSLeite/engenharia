# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

verificacaoLogin = ->
	if window.href.location == 'http://dobroounada.herokuapp.com/welcome/index?notice=Falha+ao+logar'
		alert "Login e/ou senha incorretos"