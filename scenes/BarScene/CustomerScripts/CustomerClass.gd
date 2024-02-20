extends Node2D
class_name CustomerBase

#var order = [carrots, onions]
var order = []
var orderGenerated = false
var num
var seat
var movement_speed = 500
#potions
var potions = ["Sugar and Spice","Rootbeer2","Curly Cue","Icarus",
			"The Ugly","The Tooth Fairy","Full Blossom","Mind-Boggler",
			"Potpourri","The Hippy"]
#ingredients
var rosemary
var lavender
var sunflowers
var ravensClaw
var whiskers
var feathers
var poisonIvy
var mandrakeRoot
var eyeOfNewt
var chemicalX
var cherryBlossoms
var scales
var nails
var fur
var tooth
var horns
var pigsTail

# Called when the node enters the scene tree for the first time.
func _ready():
	num = Singleton.customerNum
	randomizeOrder()
	# pick seat
	seat = Singleton.Seats[randi_range(0, 3)]
	

func randomizeOrder():
	randomize()
	#for i in order.size():
		#order[i] = randi_range(0, 1)
		#print(order[i])
		
	order = potions[randi_range(0,9)]
	Singleton.orders.append(order)
	print("Orders: ", Singleton.orders)
	orderGenerated = true
	#order = {"carrots": (randtf()), 
			#"onions": (randtf())}

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position.move_toward(seat.position, delta * movement_speed)
