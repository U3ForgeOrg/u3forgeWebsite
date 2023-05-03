extends MeshInstance


# Called when the node enters the scene tree for the first time.
func _ready():
	var w=get_parent().get_node("UI").res[0].to_int()
	var h=get_parent().get_node("UI").res[1].to_int()
	
	get_parent().get_node("Camera").set_perspective(60,0.1,100)
	get_parent().get_node("Planet_Sandy").translation=Vector3(w*0.001,-1,-h*0.001)
	get_parent().get_node("Planet 3").translation=Vector3(w*0.001-1,-1,-h*0.002)
	get_parent().get_node("planet_habitable").translation=Vector3(w*0.001-0.8,-1,h*0.0015)

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var horizontal=Input.get_action_strength("left")-Input.get_action_strength("right")
	var vertical=Input.get_action_strength("down")-Input.get_action_strength("up")
	
	translate(Vector3(vertical*delta,0,horizontal*delta))

