extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_pigsTail_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("pigsTail") && !Flask.potionFinished:
		Flask.flask_contents["pigsTail"] += 1
	elif !Flask.flask_contents.has("pigsTail"):
		Flask.flask_contents["pigsTail"] = 1
	print(Flask.flask_contents)
	
func _on_horns_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("horns") && !Flask.potionFinished:
		Flask.flask_contents["horns"] += 1
	elif !Flask.flask_contents.has("horns"):
		Flask.flask_contents["horns"] = 1
	print(Flask.flask_contents)
	
func _on_tooth_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("tooth") && !Flask.potionFinished:
		Flask.flask_contents["tooth"] += 1
	elif !Flask.flask_contents.has("tooth"):
		Flask.flask_contents["tooth"] = 1
	print(Flask.flask_contents)
	
func _on_fur_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("fur") && !Flask.potionFinished:
		Flask.flask_contents["fur"] += 1
	elif !Flask.flask_contents.has("fur"):
		Flask.flask_contents["fur"] = 1
	print(Flask.flask_contents)
	
func _on_nails_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("nails") && !Flask.potionFinished:
		Flask.flask_contents["nails"] += 1
	elif !Flask.flask_contents.has("nails"):
		Flask.flask_contents["nails"] = 1
	print(Flask.flask_contents)

func _on_scales_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("scales") && !Flask.potionFinished:
		Flask.flask_contents["scales"] += 1
	elif !Flask.flask_contents.has("scales"):
		Flask.flask_contents["scales"] = 1
	print(Flask.flask_contents)

func _on_chemicalX_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("chemicalX") && !Flask.potionFinished:
		Flask.flask_contents["chemicalX"] += 1
	elif !Flask.flask_contents.has("chemicalX"):
		Flask.flask_contents["chemicalX"] = 1
	print(Flask.flask_contents)
	
func _on_eyeOfNewt_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("eyeOfNewt") && !Flask.potionFinished:
		Flask.flask_contents["eyeOfNewt"] += 1
	elif !Flask.flask_contents.has("eyeOfNewt"):
		Flask.flask_contents["eyeOfNewt"] = 1
	print(Flask.flask_contents)
	
func _on_mandrakeRoot_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("mandrakeRoot") && !Flask.potionFinished:
		Flask.flask_contents["mandrakeRoot"] += 1
	elif !Flask.flask_contents.has("mandrakeRoot"):
		Flask.flask_contents["mandrakeRoot"] = 1
	print(Flask.flask_contents)

func _on_poisonIvy_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("poisonIvy") && !Flask.potionFinished:
		Flask.flask_contents["poisonIvy"] += 1
	elif !Flask.flask_contents.has("poisonIvy"):
		Flask.flask_contents["poisonIvy"] = 1
	print(Flask.flask_contents) 

func _on_feathers_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("feathers") && !Flask.potionFinished:
		Flask.flask_contents["feathers"] += 1
	elif !Flask.flask_contents.has("feathers"):
		Flask.flask_contents["feathers"] = 1
	print(Flask.flask_contents) 
	
func _on_whiskers_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("whiskers") && !Flask.potionFinished:
		Flask.flask_contents["whiskers"] += 1
	elif !Flask.flask_contents.has("whiskers"):
		Flask.flask_contents["whiskers"] = 1
	print(Flask.flask_contents) 
	
func _on_ravensClaw_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("ravensClaw") && !Flask.potionFinished:
		Flask.flask_contents["ravensClaw"] += 1
	elif !Flask.flask_contents.has("ravensClaw"):
		Flask.flask_contents["ravensClaw"] = 1
	print(Flask.flask_contents) 


func _on_sunflowers_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("sunflowers") && !Flask.potionFinished:
		Flask.flask_contents["sunflowers"] += 1
	elif !Flask.flask_contents.has("sunflowers"):
		Flask.flask_contents["sunflowers"] = 1
	print(Flask.flask_contents) 

func _on_lavender_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("lavender") && !Flask.potionFinished:
		Flask.flask_contents["lavender"] += 1
	elif !Flask.flask_contents.has("lavender"):
		Flask.flask_contents["lavender"] = 1
	print(Flask.flask_contents) 
	
func _on_cherry_blossoms_pressed():
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("cherryBlossoms") && !Flask.potionFinished:
		Flask.flask_contents["cherryBlossoms"] += 1
	elif !Flask.flask_contents.has("cherryBlossoms"):
		Flask.flask_contents["cherryBlossoms"] = 1
	print(Flask.flask_contents) 
	var animator:AnimationPlayer = get_node("cherryBlossoms/IngredientAnimator")
	animator.play("selected")


func _on_rosemary_pressed():
	# add onion to flask
	print("potion: ", Flask.potionFinished)
	if Flask.flask_contents.has("rosemary") && !Flask.potionFinished:
		Flask.flask_contents["rosemary"] += 1
	elif !Flask.flask_contents.has("rosemary"):
		Flask.flask_contents["rosemary"] = 1 # not sure if new entry initializes to 0
	print(Flask.flask_contents) # NOTE: temp debug
