extends Control

onready var ui=get_parent().get_node("UI")
onready var port=get_parent().get_node("Portfolio")
func _on_TextureButton_button_down():
	get_parent().get_node("UI").show_hide_obj(true)
	visible=false



func _on_PDFButton_button_down():
	var jscode='window.open("https://drive.google.com/file/d/1JUldxNl0B3A01Y4JbO06jd6zs2n0K9jc/view?usp=share_link", "_blank");'
	JavaScript.eval(jscode)




func _on_portfolio_button_down():
	ui._on_PortfolioBtn_button_down()





func _on_AtlantisHeroes_button_down():
	port.tog_select.emit_signal("toggled",false)
	port.tog_unreal.pressed=true
	ui._on_PortfolioBtn_button_down()
	
	


func _on_unity_button_down():
	port.tog_select.emit_signal("toggled",false)
	port.tog_ar.pressed=true
	ui._on_PortfolioBtn_button_down()


func _on_LOL_button_down():
	port.tog_select.emit_signal("toggled",false)
	port.tog_unity.pressed=true
	port.get_node("ScrollContainer/VBoxContainer/Unity").scroll_horizontal=1145
	ui._on_PortfolioBtn_button_down()
