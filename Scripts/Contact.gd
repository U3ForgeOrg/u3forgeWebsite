extends Control



func _on_Home_button_down():
	get_parent().get_node("UI").show_hide_obj(true)
	visible=false
