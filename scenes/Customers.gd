extends Node2D

var myNode = preload("res://scenes/temp_customer.tscn")
var customer1 = preload("res://prefabs/customer1.tscn")
var customer2 = preload("res://prefabs/customer2.tscn")
var orders = 0
var instance
var isInstantiated = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	#instantiates obj, can be made into method
	randomize()
	var customers = [myNode, customer1, customer2]
	var kinds = customers[randi() % customers.size()]
	instance = kinds.instantiate()
	#instance = myNode.instantiate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_node("Ordering") != null):
		instance.position = get_node("Ordering").position
		if(!isInstantiated):
			add_child(instance)
		isInstantiated = true;
