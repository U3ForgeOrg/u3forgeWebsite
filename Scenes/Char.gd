extends AnimatedSprite


# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.get_name() == "HTML5":
		get_parent().get_node("Control").get_node("Label").text=OS.get_model_name()
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

	


func to_iso(vector):
	var pos=Vector2();
	pos.x=vector.x-vector.y
	pos.y=(vector.x+vector.y)/2
	return pos

func moveWithMouse():
	var mousePos=get_global_mouse_position()
	var angle= rad2deg((position-mousePos).angle())
	print(angle)
	if angle>=75 and angle<=95:
		play("idleUp")
	elif angle>=140 and angle<=170:
		play("idle_upR")
	elif angle>=-175 and angle<=179:
		play("idleR")
	elif angle>=0 and angle<=0.6:
		play("idle_upR")
	elif angle>=0 and angle<=0.6:
		play("idle_upR")
	elif angle>=0 and angle<=0.6:
		play("idle_upR")
	elif angle>=0 and angle<=0.6:
		play("idle_upR")
