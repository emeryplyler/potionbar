extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/StartButton.grab_focus() # Lets us use keyboard to select starting with the start Button


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/BarScene/BarScene.tscn") #this is diffrent from vers 3 
	


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://scenes/OptionsScene.tscn")
	


func _on_credit_button_pressed():
	get_tree().change_scene_to_file("res://scenes/CreditsScene.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
