extends MeshInstance

onready var camera=get_parent().get_node("Camera")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var horizontal=Input.get_action_strength("left")-Input.get_action_strength("right")
	var vertical=Input.get_action_strength("down")-Input.get_action_strength("up")
	
	translate(Vector3(vertical*delta,0,horizontal*delta))

