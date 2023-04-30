extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# Retrieve the `window.console` object.
	var console = JavaScript.eval("navigator.platform;")
	if console == null:
		get_node("Label").text="null"
	else:
		get_node("Label").text=console
		# Call the `window.console.log()` method.
		







# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
