extends Sprite2D

var acceptOrder = false;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#customer now can be clicked
func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			if(!acceptOrder):
				get_node("RichTextLabel").set_text("I would like a potion please!")
				print("order is: ", CustomerArray.order)
				acceptOrder = true
