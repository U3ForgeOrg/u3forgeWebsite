extends Control

var res=Array()

# Called when the node enters the scene tree for the first time.
func _ready():
	var path="res://Scripts/detect_os.txt"
	var jscode=load_text_file(path)
	#print(jscode)
	var out = JavaScript.eval(jscode)
	
	if out == null:
		res.append("378")
		res.append("793")
	else:
		res=str(out).split("/")
		
	#pass


		
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
