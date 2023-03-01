#Exercício da semana 5

extends Node2D

var teste = false
var valor = 0
var numero = 0 #Nessa linha realizei a mudança da variável "número" para numero, sem o acento. Devemos sempre estar atentos se as variáveis não estão com acentos ou espaços.
var lista = [] #Nessa linha estava faltando colocar "var" antes da lista, pois sempre que formos definir pela primeira vez qualquer variável é necessário ser feito isso.
var nome = "" #Nessa linha adicionei a variavel "nome", que será usada em algumas linhas
func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Nessa linha alterei a variável que estava "número" (com acento) para "numero" (sem acento) e adicionei o sinal "$" antes de LineEdit
	$LineEdit.text = nome


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i #Nessa linha alterei a variável qu estava "Numero" (com letra maiúscula) para "numero
		lista.append(numero) #Nessa linha alterei a variável qu estava "Numero" (com letra maiúscula) para "numero
	$Label.text = str(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont = 0 #Adicionei nessa linha a variável "cont" que foi colocada dentro do while sem definir (sem o "var")
	var i = 0 #Adicionei nessa linha a variável "i" que foi colocada dentro do while sem definir (sem o "var")
	while(len(lista)):
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			nome = nome+"baldo"
		$Label2.text = nome
