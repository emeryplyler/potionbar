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
	#print("AHHHHHHHHHHHHH seats:" ,Singleton.Seats)
	

func ingredientList():
	potions[0][1]["rosemary"] = true
	potions[0][1]["cherryBlossoms"] = true
	
	potions[1][1]["scales"] = true
	potions[1][1]["mandrakeRoot"] = true
	potions[1][1]["chemicalX"] = true
	
	
	potions[2][1]["fur"] = true
	potions[2][1]["sunflowers"] = true
	potions[2][1]["pigsTail"] = true
	
	
	potions[3][1]["feathers"] = true
	potions[3][1]["ravensClaw"] = true
	
	
	potions[4][1]["poisonIvy"] = true
	potions[4][1]["tooth"] = true
	
	
	potions[5][1]["tooth"] = true
	potions[5][1]["lavender"] = true
	
	potions[6][1]["nails"] = true
	potions[6][1]["cherryBlossoms"] = true
	
	potions[7][1]["whiskers"] = true
	potions[7][1]["eyeOfNewt"] = true
	
	potions[8][1]["feathers"] = true
	potions[8][1]["mandrakeRoot"] = true
	potions[8][1]["sunflowers"] = true
	
	potions[9][1]["horns"] = true
	potions[9][1]["lavender"] = true
	potions[9][1]["scales"] = true
	
func randomizeOrder():
	randomize()
	order = potions[randi_range(0,9)]
	Singleton.orders.append(order)
	#print("Orders: ", Singleton.orders)
	orderGenerated = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(!served):
		position = position.move_toward(seat.position, delta * movement_speed)
