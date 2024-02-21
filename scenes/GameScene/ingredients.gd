extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_cherry_blossoms_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("cherryBlossoms") && !Flask.potionFinished:
		Flask.flask_contents["cherryBlossoms"] += 1
	elif !Flask.flask_contents.has("cherryBlossoms"):
		Flask.flask_contents["cherryBlossoms"] = 1
	print(Flask.flask_contents) 


func _on_rosemary_pressed():
	# add onion to flask
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("rosemary") && !Flask.potionFinished:
		Flask.flask_contents["rosemary"] += 1
	elif !Flask.flask_contents.has("rosemary"):
		Flask.flask_contents["rosemary"] = 1 # not sure if new entry initializes to 0
	print(Flask.flask_contents) # NOTE: temp debug
