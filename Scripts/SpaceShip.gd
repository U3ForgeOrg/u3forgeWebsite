extends MeshInstance

var resumePos=Vector3()
var portPos=Vector3()
var contPos=Vector3()
onready var landBtn=get_node("LandBtn")
var sceneToLoad=""
# Called when the node enters the scene tree for the first time.
func _ready():
	landBtn.visible=false
	
	var w=get_parent().get_node("UI").res[0].to_int()
	var h=get_parent().get_node("UI").res[1].to_int()
	
	get_parent().get_node("Camera").set_perspective(60,0.1,100)
	get_parent().get_node("ContactPlanet").translation=Vector3(w*0.001,-1,-h*0.001)
	get_parent().get_node("PortfolioPlanet").translation=Vector3(w*0.001-1,-1,-h*0.002)
	get_parent().get_node("ResumePlanet").translation=Vector3(w*0.001-0.8,-1,h*0.0015)
	

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if visible:
		var horizontal=Input.get_action_strength("left")-Input.get_action_strength("right")
		var vertical=Input.get_action_strength("down")-Input.get_action_strength("up")
		
		translate(Vector3(vertical*delta,0,horizontal*delta))



	



func _on_SpaceShip_area_entered(area):
	if area.get_parent().name=="ResumePlanet":
		landBtn.visible=true
		sceneToLoad="Resume"
	if area.get_parent().name=="PortfolioPlanet":
		landBtn.visible=true
		sceneToLoad="Portfolio"
	if area.get_parent().name=="ContactPlanet":
		landBtn.visible=true
		sceneToLoad="Portfolio"
		


func _on_SpaceShip_area_exited(area):
	landBtn.visible=false


func _on_LandArea_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index==BUTTON_LEFT and event.pressed==true:
			get_parent().get_node(sceneToLoad).visible=true






