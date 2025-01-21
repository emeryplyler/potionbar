extends Node2D

#@onready var sprite = $IngredientSprite
const CHEERY_BLOSSOM = preload("res://assets/ingredients/cheery blossom.png")
const CHEMICAL_X = preload("res://assets/ingredients/chemical x.png")
const EYEOFNEWT = preload("res://assets/ingredients/eyeofnewt.png")
const FEATHERS = preload("res://assets/ingredients/feathers.png")
const FUR = preload("res://assets/ingredients/fur.png")
const HORN = preload("res://assets/ingredients/horn.png")
const LAVENDER = preload("res://assets/ingredients/lavender.png")
const MANDRAKEROOT = preload("res://assets/ingredients/mandrakeroot.png")
const NAIL = preload("res://assets/ingredients/nail.png")
const PIGSTAIL = preload("res://assets/ingredients/pigstail.png")
const POISONIVY = preload("res://assets/ingredients/poisonivy.png")
const RAVENSCLAW = preload("res://assets/ingredients/ravensclaw.png")
const ROSEMARY = preload("res://assets/ingredients/rosemary.png")
const SCALES = preload("res://assets/ingredients/scales.png")
const SUNFLOWER = preload("res://assets/ingredients/sunflower.png")
const TOOTH = preload("res://assets/ingredients/tooth.png")
const WHISKERS = preload("res://assets/ingredients/whiskers.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func go_to_cauldron(ingredient_type:String, target:Vector2):
	var sprite = $IngredientSprite
	sprite.set_texture(load("res://assets/ingredients/%s.png" % ingredient_type))
	set_position(target)
	#print("Went to cauldron")
	#print("My parent is: %s" % self.get_parent())
