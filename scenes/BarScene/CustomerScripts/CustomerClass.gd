extends Node2D
class_name CustomerBase

#var order = [carrots, onions]
var order = []
var orderGenerated = false
var num
var seat
var movement_speed = 500
var served = false

#ingredients
#potions
var potions:Dictionary = {0 : ["Sugar and Spice", Singleton.emptyPotion.duplicate()],
							1 : ["a Rootbeer 2", Singleton.emptyPotion.duplicate()],
							2 : ["a Curly Cue", Singleton.emptyPotion.duplicate()],
							3 : ["an Icarus", Singleton.emptyPotion.duplicate()], 
							4 : ["The Ugly", Singleton.emptyPotion.duplicate()],
							5 : ["The Tooth Fairy", Singleton.emptyPotion.duplicate()],
							6 : ["a Full Blossom", Singleton.emptyPotion.duplicate()],
							7 : ["a Mind-Boggler", Singleton.emptyPotion.duplicate()], 
							8 : ["a Potpourri", Singleton.emptyPotion.duplicate()],
							9 : ["The Hippy", Singleton.emptyPotion.duplicate()]}
							

# Called when the node enters the scene tree for the first time.
func _ready():
	#setting ingredients for potions
	ingredientList()
	num = Singleton.customerNum
	randomizeOrder()
	# pick seat
	var seatIndex = randi_range(0, Singleton.Seats.size() -1);
	seat = Singleton.Seats[seatIndex]
	Singleton.Seats.pop_at(seatIndex)
	print("AHHHHHHHHHHHHH seats:" ,Singleton.Seats)
	

func ingredientList():
	potions[0][1]["rosemary"] += 1
	potions[0][1]["cherryBlossoms"] += 1
	
	potions[1][1]["scales"] += 1
	potions[1][1]["mandrakeRoot"] += 1
	potions[1][1]["chemicalX"] += 1
	
	
	potions[2][1]["fur"] += 1
	potions[2][1]["sunflowers"] += 1
	potions[2][1]["pigsTail"] += 1
	
	
	potions[3][1]["feathers"] += 1
	potions[3][1]["ravensClaw"] += 1
	
	
	potions[4][1]["poisonIvy"] += 1
	potions[4][1]["tooth"] += 1
	
	
	potions[5][1]["tooth"] += 1
	potions[5][1]["lavender"] += 1
	
	potions[6][1]["nails"] += 1
	potions[6][1]["cherryBlossoms"] += 1
	
	potions[7][1]["whiskers"] += 1
	potions[7][1]["eyeOfNewt"] += 1
	
	potions[8][1]["feathers"] += 1
	potions[8][1]["mandrakeRoot"] += 1
	potions[8][1]["sunflowers"] += 1
	
	potions[9][1]["horns"] += 1
	potions[9][1]["lavender"] += 1
	potions[9][1]["scales"] += 1
	
func randomizeOrder():
	randomize()
	order = potions[randi_range(0,9)]
	Singleton.orders.append(order)
	print("Orders: ", Singleton.orders)
	orderGenerated = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(!served):
		position = position.move_toward(seat.position, delta * movement_speed)
