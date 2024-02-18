extends Node
class_name CustomerBase

#var order = [carrots, onions]
var order:Dictionary = {}
var orderGenerated = false
var num

# Called when the node enters the scene tree for the first time.
func _ready():
	print(orderGenerated)
	if(num != Singleton.customers.size()):
		print("this shouldn't be running more than once")
		randomizeOrder()


func randomizeOrder():
	randomize()
	#for i in order.size():
		#order[i] = randi_range(0, 1)
		#print(order[i])
		
	order = {"carrots": (randi_range(0, 3)), 
			"onions": (randi_range(0, 3))}
	Singleton.orders.append(order)
	print("Orders: ", Singleton.orders)
	orderGenerated = true
	#order = {"carrots": (randtf()), 
			#"onions": (randtf())}

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
