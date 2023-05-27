extends Control



func _on_TextureButton_button_down():
	visible=false


func _on_TextureButton2_button_down():
	OS.shell_open("https://drive.google.com/file/d/1JUldxNl0B3A01Y4JbO06jd6zs2n0K9jc/view?usp=share_link")
