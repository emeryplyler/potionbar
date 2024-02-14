extends Control

var flask_contents:Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_onion_pressed():
	# add onion to flask
	if flask_contents.has("onion"):
		flask_contents["onion"] += 1
	else:
		flask_contents["onion"] = 1 # not sure if new entry initializes to 0
	print(flask_contents) # NOTE: temp debug


func _on_carrot_pressed():
	if flask_contents.has("carrot"):
		flask_contents["carrot"] += 1
	else:
		flask_contents["carrot"] = 1
	print(flask_contents) 
