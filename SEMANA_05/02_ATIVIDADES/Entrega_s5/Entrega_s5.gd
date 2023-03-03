#Exercício da semana 5

extends Node2D


var numero = 0 #Nessa linha realizei a mudança da variável "número" para numero, sem o acento. Devemos sempre estar atentos se as variáveis não estão com acentos ou espaços.
var lista = [] #Nessa linha estava faltando colocar "var" antes da lista, pois sempre que formos definir pela primeira vez qualquer variável é necessário ser feito isso.
var nome = '' #Nessa linha adicionei a variavel "nome", que será usada em algumas linhas
func _on_Button_pressed(): #Função relacionada com o primeiro botão
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Nessa linha alterei a variável que estava "número" (com acento) para "numero" (sem acento) e adicionei o sinal "$" antes de LineEdit
	$Label4.text = "Sua resposta é: " + str(numero) #Nessa linha mostra somente o número digitado pelo usuário na tela

func _on_Button2_pressed(): #Função relacionada com o segundo botão
	#Incrementando o número inserido pelo usuário
	numero = int($LineEdit.text) #Adicionei novamente o valor do número para que não ocorra de o valor sempre ser somado ao apertar o botão
	for i in range(10):
		numero+=i #Nessa linha alterei a variável qu estava "Numero" (com letra maiúscula) para "numero
		lista.append(numero) #Nessa linha alterei a variável qu estava "Numero" (com letra maiúscula) para "numero
	$Label2.text = "O número somado é: " + str(numero) #Nessa linha mostra o número que foi somado na tela


func _on_Button3_pressed(): #Função relacionada com o terceiro botão
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	nome = $LineEdit2.text #Aqui eu coloco na variável "nome" o que for inserido pelo usuário
	var cont = 0 #Adicionei nessa linha a variável "cont" que foi colocada dentro do while sem definir (sem o "var")
	for i in (len(lista)): #Criei um for baseado no tamanho da lista, para verifcar todos os valroes dela
		if(lista[i] % 2 == 1): #Aqui irá verificar se o número é ímpar
			cont+=1 #muda a variável cont para adicionar baldo
		if(cont!=0): #se for diferente de 0 será adicionado baldo ao final do nome
			nome = nome+"baldo" #adiciona baldo no final
			break #Esse break faz com que o looping do for pare, evitando que baldo seja adicionado diversas vezes no nome
	$Label5.text = nome #Nessa linha mostra o nome do usuário na tela
	
