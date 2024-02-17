extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_texture_button_pressed():
	if(Flask.flask_contents == CustomerArray.order):
		print("yay")
	else:
		print(":(")
	Flask.flask_contents = {"carrots": 0, "onions": 0}
	Flask.potionFinished = false
	get_tree().change_scene_to_file("res://scenes/BarScene/BarScene.tscn")
