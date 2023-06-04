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
onready var tog_python=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/Python")
onready var tog_ai=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/AI")
onready var tog_edu=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/Education")
onready var tog_godot=get_node("ScrollContainer/VBoxContainer/Filter/HBoxContainer/Godot")

onready var tog_select=get_node("ScrollContainer/VBoxContainer/SelectAll")

var canSetSelect=true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _on_Link_button_down(extra_arg_0):
	var jscode='window.open("'+extra_arg_0+'", "_blank");'
	JavaScript.eval(jscode)


func select_deselect(select):
	tog_unreal.pressed=select
	tog_cs.pressed=select
	tog_ar.pressed=select
	tog_vr.pressed=select
	tog_unity.pressed=select
	tog_c.pressed=select
	tog_python.pressed=select
	tog_ai.pressed=select
	tog_edu.pressed=select
	tog_godot.pressed=select



func _on_UE_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	if not tog_c.pressed:
		for i in unreal:
			i.visible=button_pressed


func _on_Unity_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	if not tog_cs.pressed and not tog_ar.pressed and not tog_vr.pressed:
		for i in unity:
			i.visible=button_pressed
		for j in get_tree().get_nodes_in_group("AR"):
			j.visible=button_pressed
		if not tog_vr.pressed:
			for k in get_tree().get_nodes_in_group("VR"):
				k.visible=button_pressed
		unity[0].get_node("HBoxContainer/Zeq").visible=button_pressed
		unity[0].get_node("HBoxContainer/ZeqSep").visible=button_pressed
		unity[0].get_node("HBoxContainer/LOL").visible=button_pressed
	elif not tog_cs.pressed and (tog_ar.pressed or tog_vr.pressed):
		unity[0].get_node("HBoxContainer/Zeq").visible=button_pressed
		unity[0].get_node("HBoxContainer/ZeqSep").visible=button_pressed
		unity[0].get_node("HBoxContainer/LOL").visible=button_pressed


func _on_Godot_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	for i in godot:
		i.visible=button_pressed


func _on_C_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	if not tog_unreal.pressed:
		for i in unreal:
			i.visible=button_pressed
	for i in c:
		i.visible=button_pressed


func _on_cs_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	if not tog_unity.pressed and not tog_ar.pressed and not tog_vr.pressed:
		for i in unity:
			i.visible=button_pressed
		for j in get_tree().get_nodes_in_group("AR"):
			j.visible=button_pressed
		if not tog_vr.pressed:
			for k in get_tree().get_nodes_in_group("VR"):
				k.visible=button_pressed
		unity[0].get_node("HBoxContainer/Zeq").visible=button_pressed
		unity[0].get_node("HBoxContainer/ZeqSep").visible=button_pressed
		unity[0].get_node("HBoxContainer/LOL").visible=button_pressed
	elif not tog_unity.pressed and (tog_ar.pressed or tog_vr.pressed):
		unity[0].get_node("HBoxContainer/Zeq").visible=button_pressed
		unity[0].get_node("HBoxContainer/ZeqSep").visible=button_pressed
		unity[0].get_node("HBoxContainer/LOL").visible=button_pressed


func _on_Python_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	for i in ai:
		i.visible=button_pressed


func _on_AI_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	for i in ai:
		i.visible=button_pressed


func _on_Education_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	for i in edu:
		i.visible=button_pressed


func _on_AR_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	if not tog_unity.pressed and not tog_cs.pressed:
		for i in unity:
			i.visible=tog_unity.pressed or tog_vr.pressed or tog_cs.pressed or button_pressed
		unity[0].get_node("HBoxContainer/Zeq").visible=false
		unity[0].get_node("HBoxContainer/ZeqSep").visible=false
		unity[0].get_node("HBoxContainer/LOL").visible=false
		for j in get_tree().get_nodes_in_group("AR"):
			j.visible=button_pressed
		if not tog_vr.pressed:
			for k in get_tree().get_nodes_in_group("VR"):
				k.visible=false


func _on_VR_toggled(button_pressed):
	if canSetSelect:
		tog_select.set_pressed_no_signal(false)
	if not tog_unity.pressed and not tog_cs.pressed:
		for i in unity:
			i.visible=tog_unity.pressed or tog_ar.pressed or tog_cs.pressed or button_pressed
		unity[0].get_node("HBoxContainer/Zeq").visible=false
		unity[0].get_node("HBoxContainer/ZeqSep").visible=false
		unity[0].get_node("HBoxContainer/LOL").visible=false
		for j in get_tree().get_nodes_in_group("VR"):
			j.visible=button_pressed
		if not tog_ar.pressed:
			for k in get_tree().get_nodes_in_group("AR"):
				k.visible=false


func _on_Home_button_down():
	get_parent().get_node("UI").show_hide_obj(true)
	visible=false


func _on_SelectAll_toggled(button_pressed):
	canSetSelect=false
	select_deselect(button_pressed)
	canSetSelect=true
	
	
