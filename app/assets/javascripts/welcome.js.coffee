# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

root = exports ? this

root.verificacaoLogin = () ->
	linkAtual = window.location.href
	alert linkAtual
	indicacaoFalhaLogin = linkAtual.indexOf "notice=Falha+ao+logar", 0
	alert indicacaoFalhaLogin
	if indicacaoFalhaLogin >= 0
		alert "Login e/ou senha incorretos"
	return