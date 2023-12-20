extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_go_to_cauldron_button_up():
	get_tree().change_scene_to_file("res://scenes/GameScene.tscn")
