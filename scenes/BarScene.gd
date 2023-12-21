extends Node2D

var Customers: Array
@export var customer_scene: PackedScene
var num_customers

# Called when the node enters the scene tree for the first time.
func _ready():
	num_customers = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if num_customers == 0:
		pass


func _on_go_to_cauldron_button_up():
	get_tree().change_scene_to_file("res://scenes/GameScene.tscn")
