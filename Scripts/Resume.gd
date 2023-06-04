extends Control

onready var ui=get_parent().get_node("UI")
onready var jscode=ui.load_text_file("res://Scripts/openWindow.js")
func _on_TextureButton_button_down():
	get_parent().get_node("UI").show_hide_obj(true)
	visible=false



func _on_PDFButton_button_down():
	var jscode='window.open("https://drive.google.com/file/d/1JUldxNl0B3A01Y4JbO06jd6zs2n0K9jc/view?usp=share_link", "_blank");'
	JavaScript.eval(jscode)



func _on_desc_button_down(extra_arg_0, extra_arg_1):
	var functionCall="openSubTab('"+extra_arg_0+"', '"+extra_arg_1+"');"
	var out = JavaScript.eval(jscode+functionCall)


func _on_portfolio_button_down():
	ui._on_PortfolioBtn_button_down()


func _on_vid_button_down(extra_arg_0, extra_arg_1, extra_arg_2):
	var functionCall="openSubTabVideo('"+extra_arg_0+"', '"+extra_arg_1+"','"+extra_arg_2+"');"
	var out = JavaScript.eval(jscode+functionCall)
