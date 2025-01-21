extends Control

# References to button animators

@export var ingredient_effect_class: PackedScene
var cauldron_coords = Vector2(600, 300) # this is relative to the ingredients control node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_pigsTail_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["pigsTail"] = !Flask.flask_contents["pigsTail"] # toggle ingredient
	var animator:AnimationPlayer = get_node("pigsTail/AnimationPlayer")
	if Flask.flask_contents["pigsTail"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#if Flask.flask_contents.has("pigsTail") && !Flask.potionFinished:
		#Flask.flask_contents["pigsTail"] += 1
	#elif !Flask.flask_contents.has("pigsTail"):
		#Flask.flask_contents["pigsTail"] = 1

	#print(Flask.flask_contents)
	
func _on_horns_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["horns"] = !Flask.flask_contents["horns"]
	var animator:AnimationPlayer = get_node("horns/AnimationPlayer")
	if Flask.flask_contents["horns"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	
	#print(Flask.flask_contents)
	
func _on_tooth_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["tooth"] = !Flask.flask_contents["tooth"]
	var animator:AnimationPlayer = get_node("tooth/AnimationPlayer")
	if Flask.flask_contents["tooth"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents)
	
func _on_fur_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["fur"] = !Flask.flask_contents["fur"]
	var animator:AnimationPlayer = get_node("fur/AnimationPlayer")
	if Flask.flask_contents["fur"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents)
	
func _on_nails_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["nails"] = !Flask.flask_contents["nails"]
	var animator:AnimationPlayer = get_node("nails/AnimationPlayer")
	if Flask.flask_contents["nails"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents)

func _on_scales_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["scales"] = !Flask.flask_contents["scales"]
	var animator:AnimationPlayer = get_node("scales/AnimationPlayer")
	if Flask.flask_contents["scales"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents)

func _on_chemicalX_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["chemicalX"] = !Flask.flask_contents["chemicalX"]
	var animator:AnimationPlayer = get_node("chemicalX/AnimationPlayer")
	if Flask.flask_contents["chemicalX"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents)
	
func _on_eyeOfNewt_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["eyeOfNewt"] = !Flask.flask_contents["eyeOfNewt"]
	var animator:AnimationPlayer = get_node("eyeOfNewt/AnimationPlayer")
	if Flask.flask_contents["eyeOfNewt"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents)
	
func _on_mandrakeRoot_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["mandrakeRoot"] = !Flask.flask_contents["mandrakeRoot"]
	var animator:AnimationPlayer = get_node("mandrakeRoot/AnimationPlayer")
	if Flask.flask_contents["mandrakeRoot"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents)

func _on_poisonIvy_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["poisonIvy"] = !Flask.flask_contents["poisonIvy"]
	var animator:AnimationPlayer = get_node("poisonIvy/AnimationPlayer")
	if Flask.flask_contents["poisonIvy"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents) 

func _on_feathers_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["feathers"] = !Flask.flask_contents["feathers"]
	var animator:AnimationPlayer = get_node("feathers/AnimationPlayer")
	if Flask.flask_contents["feathers"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents) 
	
func _on_whiskers_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["whiskers"] = !Flask.flask_contents["whiskers"]
	var animator:AnimationPlayer = get_node("whiskers/AnimationPlayer")
	if Flask.flask_contents["whiskers"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents) 
	
func _on_ravensClaw_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["ravensClaw"] = !Flask.flask_contents["ravensClaw"]
	var animator:AnimationPlayer = get_node("ravensClaw/AnimationPlayer")
	if Flask.flask_contents["ravensClaw"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents) 


func _on_sunflowers_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["sunflowers"] = !Flask.flask_contents["sunflowers"]
	var animator:AnimationPlayer = get_node("sunflowers/AnimationPlayer")
	if Flask.flask_contents["sunflowers"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents) 

func _on_lavender_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["lavender"] = !Flask.flask_contents["lavender"]
	var animator:AnimationPlayer = get_node("lavender/AnimationPlayer")
	if Flask.flask_contents["lavender"]:
		animator.play("bounce")
		spawn_ingredient_effect("lavender")
		
	else:
		animator.play("RESET")
	#print(Flask.flask_contents) 
	
func _on_cherry_blossoms_pressed():
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["cherryBlossoms"] = !Flask.flask_contents["cherryBlossoms"]
	var animator:AnimationPlayer = get_node("cherryBlossoms/AnimationPlayer")
	if Flask.flask_contents["cherryBlossoms"]:
		animator.play("bounce")
		spawn_ingredient_effect("cheery blossom")
		
	else:
		animator.play("RESET")
	
	#print(Flask.flask_contents) 


func _on_rosemary_pressed():
	# add onion to flask
	#print("potion: ", Flask.potionFinished)
	Flask.flask_contents["rosemary"] = !Flask.flask_contents["rosemary"]
	var animator:AnimationPlayer = get_node("rosemary/AnimationPlayer")
	if Flask.flask_contents["rosemary"]:
		animator.play("bounce")
	else:
		animator.play("RESET")
	#print(Flask.flask_contents) # NOTE: temp debug
	
func spawn_ingredient_effect(type):
	var ingredient_effect = ingredient_effect_class.instantiate()
	var target = cauldron_coords
	add_child(ingredient_effect)
	ingredient_effect.go_to_cauldron(type, target)
	
