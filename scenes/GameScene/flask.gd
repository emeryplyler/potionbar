extends Node2D
var is_empty = true

var flask_contents:Dictionary
var potionFinished = false
# Called when the node enters the scene tree for the first time.
func _ready():
	flask_contents = Singleton.emptyPotion.duplicate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
