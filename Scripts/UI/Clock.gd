extends Node2D
@onready var timer = $Timer
var current_time = 0 # global var to tell what time it is

func _ready():
	pass


func _process(delta):
	if timer.time_left != 0: # if timer is running
		current_time = displayTime()


func displayTime():
	var seconds = floor(timer.time_left)
	return seconds
	

func _on_timeout():
	print("Timed out")
