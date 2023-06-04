extends Control

onready var unreal=[get_node("ScrollContainer/VBoxContainer/Unreal"),get_node("ScrollContainer/VBoxContainer/UnrealHeader")]
onready var unity=[get_node("ScrollContainer/VBoxContainer/Unity"),get_node("ScrollContainer/VBoxContainer/UnityHeader")]
onready var godot=[get_node("ScrollContainer/VBoxContainer/Godot"),get_node("ScrollContainer/VBoxContainer/GodotHeader")]
onready var c=[get_node("ScrollContainer/VBoxContainer/C++"),get_node("ScrollContainer/VBoxContainer/C++Header")]
onready var ai=[get_node("ScrollContainer/VBoxContainer/AI"),get_node("ScrollContainer/VBoxContainer/AIHeader")]
onready var edu=[get_node("ScrollContainer/VBoxContainer/Education"),get_node("ScrollContainer/VBoxContainer/EducationHeader")]

onready var tog_unreal=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/UE")
onready var tog_unity=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/Unity")
onready var tog_c=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/C++")
onready var tog_cs=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/C#")
onready var tog_ar=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/AR")
onready var tog_vr=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/VR")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Link_button_down(extra_arg_0):
	var jscode='window.open("'+extra_arg_0+'", "_blank");'
	JavaScript.eval(jscode)


func hide_all():
	unreal.visible=false
	unity.visible=false
	godot.visible=false
	c.visible=false
	ai.visible=false
	edu.visible=false


func _on_UE_toggled(button_pressed):
	if not tog_c.pressed:
		for i in unreal:
			i.visible=button_pressed


func _on_Unity_toggled(button_pressed):
	if not tog_cs.pressed and not tog_ar.pressed and not tog_vr.pressed:
		for i in unity:
			i.visible=button_pressed
	elif tog_ar.pressed or tog_vr.pressed:
		unity[0].get_node("HBoxContainer/Zeq").visible=button_pressed
		unity[0].get_node("HBoxContainer/ZeqSep").visible=button_pressed
		unity[0].get_node("HBoxContainer/LOL").visible=button_pressed


func _on_Godot_toggled(button_pressed):
	for i in godot:
		i.visible=button_pressed


func _on_C_toggled(button_pressed):
	if not tog_unreal.pressed:
		for i in unreal:
			i.visible=button_pressed
	for i in c:
		i.visible=button_pressed


func _on_cs_toggled(button_pressed):
	if not tog_unity.pressed and not tog_ar.pressed and not tog_vr.pressed:
		for i in unity:
			i.visible=button_pressed
	elif not tog_unity.pressed and (tog_ar.pressed or tog_vr.pressed):
		unity[0].get_node("HBoxContainer/Zeq").visible=button_pressed
		unity[0].get_node("HBoxContainer/ZeqSep").visible=button_pressed
		unity[0].get_node("HBoxContainer/LOL").visible=button_pressed


func _on_Python_toggled(button_pressed):
	for i in ai:
		i.visible=button_pressed


func _on_AI_toggled(button_pressed):
	for i in ai:
		i.visible=button_pressed


func _on_Education_toggled(button_pressed):
	for i in edu:
		i.visible=button_pressed


func _on_AR_toggled(button_pressed):
	if not tog_unity.pressed and not tog_cs.pressed:
		for i in unity:
			i.visible=true
		unity[0].get_node("HBoxContainer/Zeq").visible=false
		unity[0].get_node("HBoxContainer/ZeqSep").visible=false
		unity[0].get_node("HBoxContainer/LOL").visible=false
		for j in get_tree().get_nodes_in_group("AR"):
			j.visible=button_pressed


func _on_VR_toggled(button_pressed):
	if not tog_unity.pressed and not tog_cs.pressed:
		for i in unity:
			i.visible=true
		unity[0].get_node("HBoxContainer/Zeq").visible=false
		unity[0].get_node("HBoxContainer/ZeqSep").visible=false
		unity[0].get_node("HBoxContainer/LOL").visible=false
		for j in get_tree().get_nodes_in_group("VR"):
			j.visible=button_pressed


func _on_Home_button_down():
	get_parent().get_node("UI").show_hide_obj(true)
	visible=false
