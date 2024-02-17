extends Node2D

var myNode = preload("res://prefabs/customer_scenes/temp_customer.tscn")
var customer1 = preload("res://prefabs/customer_scenes/customer1.tscn")
var customer2 = preload("res://prefabs/customer_scenes/customer2.tscn")
var orders = 0
var instance
var isInstantiated = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	#instantiates obj, can be made into method
	randomize()
	var customers = [myNode, customer1, customer2]
	var kinds = customers[randi() % customers.size()]
	Singleton.customers.append(kinds.instantiate())
	print("Customers: ", Singleton.customers)
	#instance = myNode.instantiate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_node("Ordering") != null):
		Singleton.customers[Singleton.customers.size() - 1].position = get_node("Ordering").position
		if(!isInstantiated):
			add_child(Singleton.customers[Singleton.customers.size()-1])
		isInstantiated = true;
