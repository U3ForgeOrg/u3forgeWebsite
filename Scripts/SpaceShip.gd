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

func handle_mouse_aim():
	var mouse_coords = camera.get_viewport().get_mouse_position()
	
	var from = camera.project_ray_origin(mouse_coords)
	var to = from + camera.project_ray_normal(mouse_coords) * 5000
	var space = get_world().direct_space_state
	
	# ( Vector3 from, Vector3 to, Array exclude=[ ], int collision_mask=2147483647, bool collide_with_bodies=true, bool collide_with_areas=false )
	# the only thing in this layer should be our world area adjusted at character eye level
	var intersection = space.intersect_ray(from, to)
	if intersection.has("position"):
		print("int")
		look_at(intersection["position"], Vector3.UP)
