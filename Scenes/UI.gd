extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
#	var path="res://Scripts/detect_os.txt"
#	var jscode=load_text_file(path)
#	print(jscode)
#	var console = JavaScript.eval(jscode)
#	if console == null:
#		get_node("Label").text="null"
#	else:
#		get_node("Label").text=console
	pass


		
func load_text_file(path):
	var f = File.new()
	var err = f.open(path, File.READ)
	if err != OK:
		printerr("Could not open file, error code ", err)
		return ""
	var text = f.get_as_text()
	f.close()
	return text






# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
