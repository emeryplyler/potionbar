extends Node2D
@onready var timer = $Timer
var current_time # global fraction var to tell what time it is
var display_time: String = "" # global str var to display time in clock UI
@export var opening_time = 10
@export var closing_time = 20

func _ready():
	current_time = 0
	

func _process(delta):
	#if timer.time_left != 0: # if timer is running
		#current_time = displayTime()
	current_time = find_time_fraction(timer.time_left)
	display_time = find_display_time(current_time)

#func displayTime():
	#var seconds = floor(timer.time_left)
	#return seconds
	

# calculates fraction of total workday that has passed
# this will be for spawning customers
func find_time_fraction(c_time: float):
	var time_passed = timer.wait_time - c_time
	var fraction = time_passed / timer.wait_time
	return fraction
	# total time = closing_time - opening_time = like 8
	# timer.wait_time is the amount of time in seconds
	# fraction = time passed / total time

# creates string from time fraction to display the time using clock UI
func find_display_time(fraction: float):
	var time = fraction * (closing_time - opening_time) + opening_time
	var minutes_f = fmod(time, 1.0)
	#time % 1.0 # get decimal part only
	var minutes = floor(lerpf(0, 60, (minutes_f)))
	
	var short: bool = false
	if minutes < 10:
		short = true
	
	var hours = floor(time)
	
	var am: bool = true
	if hours >= 12: # noon is also pm
		if hours > 12:
			hours -= 12 
		am = false
		#pass # PM
		#hours -= 12
		#display_time = str(hours) + "pm"
	var new_display_time = str(hours) + ":"
	if short:
		new_display_time += "0"
	new_display_time += str(minutes)
	if am:
		new_display_time += "am"
	else:
		new_display_time += "pm"
		
	return new_display_time

func _on_timeout():
	print("Clock timed out")
