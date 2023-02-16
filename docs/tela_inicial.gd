extends Node2D

var lista_ex1 = [42,114,914] # A lista que eu criei para aparecer na tela

func _on_Ex1_pressed():
	$ColorRect_ex1/resposta_ex1.text = 'A lista é:  ' + str(lista_ex1) # Mostra na tela a lista em forma de string

var lista_usuario = [] #Cria lista vazia em que o usuário irá completá-la

func _on_Ex2_pressed():
	lista_usuario.append($LineEdit_ex2.text) # Nessas quatro linhas são colocados os valores digitados pelo usuário
	lista_usuario.append($LineEdit2_ex2.text)
	lista_usuario.append($LineEdit3_ex2.text)
	lista_usuario.append($LineEdit4_ex2.text)
	$ColorRect_ex2/resposta_ex2.text = 'A Lista preenchida pelo usuário é:   ' + str(lista_usuario)
	


func _on_Ex3_pressed():
	$ColorRect_ex3/resposta_ex3.text = 'Inconstitucionalissimamente' # Mostra essa string logo após o usuário clicar no botão
	



func _on_Ex4_pressed():
	$ColorRect_ex4/resposta_ex4.text = $LineEdit_ex4.text # Mostra exatamente o que o usuário digitou
