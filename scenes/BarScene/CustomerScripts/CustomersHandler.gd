extends Node2D

var myNode = preload("res://prefabs/customer_scenes/temp_customer.tscn")
var customer1 = preload("res://prefabs/customer_scenes/customer1.tscn")
var customer2 = preload("res://prefabs/customer_scenes/customer2.tscn")
var orders = 0
var instance
var isInstantiated = false
var temp
var queueTemp
var customerInfo = []

# Called when the node enters the scene tree for the first time.
func _ready():
	#instantiates obj, can be made into method
	isInstantiated = false
	randomize()
	var customers = [myNode, customer1, customer2]
	var kinds = customers[randi() % customers.size()]
	customerInfo.append(kinds)
	customerInfo.append(Singleton.customerNum)
	
	#get_node("" + kinds).num = Singleton.customerNum
	Singleton.customers.append(customerInfo)
	print("Customers: ", Singleton.customers)
	temp = Singleton.customers[Singleton.customers.size()-1][0].instantiate()
	
	Singleton.customerNum+=1
	createQueue()
	#instance = myNode.instantiate()

#Create a function, where we test customer size and instantiate a new instance at queue
func createQueue():
	if(Singleton.customers.size() > 1):
		for i in Singleton.customers.size() - 1:
			queueTemp = Singleton.customers[i][0].instantiate()
			queueTemp.position = get_node("Queue").position
			add_child(queueTemp)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_node("Ordering") != null && !isInstantiated):
		temp.position = get_node("Ordering").position
		add_child(temp)
		isInstantiated = true;
