extends Node2D

var Customers: Array
var num_customers
@onready var clock = get_node("/root/Clock")
@onready var clock_display = get_node("UI/Clock")
@onready var camera_2d = $Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	
	#randomize()
	
	num_customers = 0
	if clock == null:
		print("Clock Not Found")
		
	if clock.get_child(0).time_left == 0: # restart timer if timed out
		clock.get_child(0).start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	clock_display.text = clock.display_time
	
	if num_customers == 0:
		pass
		


func _on_go_to_cauldron_button_up():
	camera_2d.position.x = 1152


func _on_go_to_bar_pressed():
	camera_2d.position.x = 0
