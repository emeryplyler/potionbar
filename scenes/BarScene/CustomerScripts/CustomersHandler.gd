extends Node2D

var myNode = preload("res://prefabs/customer_scenes/temp_customer.tscn")
var customer1 = preload("res://prefabs/customer_scenes/customer1.tscn")
var customer2 = preload("res://prefabs/customer_scenes/customer2.tscn")
var orders = 0
var instance
var isInstantiated = false
var temp
var queueTemp

# Called when the node enters the scene tree for the first time.
func _ready():
	Singleton.Seats = [$seat1, $seat2, $seat3, $seat4]
	#instantiates obj, can be made into method
	isInstantiated = false
	spawnCustomer()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func spawnCustomer():
	randomize()
	var customers = [myNode, customer1, customer2]
	var kinds = customers[randi() % customers.size()]
	
	#get_node("" + kinds).num = Singleton.customerNum
	Singleton.customers.append(kinds.instantiate())
	Singleton.customers[Singleton.customers.size() - 1].position = get_node("Spawn").position
	add_child(Singleton.customers[Singleton.customers.size() - 1])
	print("Customers: ", Singleton.customers)
	
	Singleton.customerNum+=1


func _on_timer_timeout():
	spawnCustomer()
