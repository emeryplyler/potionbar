extends Node
class_name CustomerBase

var carrots:bool = false
var onions:bool = false
#var order = [carrots, onions]
var order:Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	#for i in order.size():
		#order[i] = randi_range(0, 1)
		#print(order[i])
		
	order = {"carrots": (randi_range(0, 3)), 
			"onions": (randi_range(0, 3))}
	#order = {"carrots": (randtf()), 
			#"onions": (randtf())}

	print("order is: ", order)

func randtf():
	if randi_range(0,1): return true 
	else: return false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
