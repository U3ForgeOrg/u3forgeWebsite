extends AnimatedSprite


# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.get_name() == "HTML5":
		var is_mobile = false
		if Engine.has_singleton("WebView"):
			var user_agent = Engine.get_singleton("WebView").evaluate_javascript("navigator.userAgent")
			var mobile_strings = ["Mobile", "Tablet", "Android", "iPhone", "iPad", "iPod"]
			for string in mobile_strings:
				if user_agent.find(string) != -1:
					is_mobile = true
					break
		if is_mobile:
			get_parent().get_node("Control").get_node("Label").text="mobile"
		else:
			get_parent().get_node("Control").get_node("Label").text="pc"
		


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
