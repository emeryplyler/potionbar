extends Node2D

var flask = preload("res://prefabs/flask.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var flask_instance = flask.instantiate()
	flask_instance.position = Vector2(600, 345)
	add_child(flask_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_gotobar_button_up():
	get_tree().change_scene_to_file("res://scenes/BarScene.tscn")
