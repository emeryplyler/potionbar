extends Node2D

#var flask = preload("res://prefabs/flask.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	#var flask_instance = flask.instantiate()
	#flask_instance.position = Vector2(600, 345)
	#add_child(flask_instance)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Flask/EmptyFlask.visible = !Flask.potionFinished


func _on_gotobar_button_up():
	get_tree().change_scene_to_file("res://scenes/BarScene/BarScene.tscn")

#turn in potion
func _on_texture_button_pressed():
	if(Flask.potionFinished):
		if(Flask.flask_contents == Singleton.orders[0]):
			print("yay")
		else:
			print(":(")
		Singleton.orders.pop_front()
		print(Singleton.orders)
		Flask.flask_contents = {"carrots": 0, "onions": 0}
		Flask.potionFinished = false
		get_tree().change_scene_to_file("res://scenes/BarScene/BarScene.tscn")
