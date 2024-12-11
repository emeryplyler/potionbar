extends Sprite2D

var acceptOrder = false;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_parent().served):
		get_parent().position = get_parent().position.move_toward(get_parent().get_parent().get_node("Spawn").position, delta * get_parent().movement_speed)
	if(get_parent().position == get_parent().get_parent().get_node("Spawn").position):
			get_parent().queue_free()
#customer now can be clicked
func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			if(!acceptOrder):
				get_node("RichTextLabel").set_text("I would like " + Singleton.orders[get_parent().num][0])
				print("order is: ", get_parent().order)
				acceptOrder = true;
			elif(Flask.potionFinished):
				get_parent().served = true
				if(Flask.flask_contents == Singleton.orders[get_parent().num][1]):
					print("yay")
				else:
					print(":(")
				Singleton.orders.pop_at(get_parent().num)
				print(Singleton.orders)
				Flask.flask_contents = Singleton.emptyPotion
				Flask.potionFinished = false
				Singleton.Seats.append(get_parent().seat)
