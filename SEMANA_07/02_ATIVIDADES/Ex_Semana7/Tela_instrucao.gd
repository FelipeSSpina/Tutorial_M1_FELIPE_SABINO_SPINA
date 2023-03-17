extends Node2D

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		OS.window_fullscreen = !OS.window_fullscreen
#Adicionei opção de apertar esc para sair da tela cheia

func _on_Button_pressed():
	get_tree().change_scene("res://Tela_incial.tscn")
	
