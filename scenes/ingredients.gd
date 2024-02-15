extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_onion_pressed():
	# add onion to flask
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("onion") && !Flask.potionFinished:
		Flask.flask_contents["onion"] += 1
	elif !Flask.flask_contents.has("onion"):
		Flask.flask_contents["onion"] = 1 # not sure if new entry initializes to 0
	print(Flask.flask_contents) # NOTE: temp debug


func _on_carrot_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("carrot") && !Flask.potionFinished:
		Flask.flask_contents["carrot"] += 1
	elif !Flask.flask_contents.has("carrot"):
		Flask.flask_contents["carrot"] = 1
	print(Flask.flask_contents) 
