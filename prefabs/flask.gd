extends Node2D
var is_empty = true

var flask_contents:Dictionary = {}
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not is_empty:
		$Emptyflask.set_visible(false)
