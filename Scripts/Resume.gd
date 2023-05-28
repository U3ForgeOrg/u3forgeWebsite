extends Control



func _on_TextureButton_button_down():
	visible=false





func _on_PDFButton_button_down():
	var jscode='window.open("https://drive.google.com/file/d/1JUldxNl0B3A01Y4JbO06jd6zs2n0K9jc/view?usp=share_link", "_blank");'
	JavaScript.eval(jscode)
