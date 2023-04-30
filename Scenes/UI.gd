extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.has_feature("touchscreen"):
		get_node("Label").text="mobile"
	else:
		get_node("Label").text="pc"



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
