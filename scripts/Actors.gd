extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#var _enemy_list = []
#var _friendly_list = []
var _move_character = false;
@onready var _character = get_node("Character")
@onready var _click_marker = get_node("ClickWrapper")

# Called when the node enters the scene tree for the first time.
func _ready():
	#get_scene_enemies()
	#get_scene_friendlies()
	pass

#todo: update these for items
#func get_scene_enemies():
	#var num_enemies = len(get_node("Enemies").get_children())
	#for node in get_node("Enemies").get_children():
		#_enemy_list.append(node)

#func get_scene_friendlies():
	#var num_friendlies = len(get_node("Frendlies").get_children())
	#for node in get_node("Frendlies").get_children():
		#_friendly_list.append(node)

func _input(event):
	#if event.is_action_released("l_click"):
		#if(attack_within_range(event)):
			#_character._kinematic.stop()
		#else:
			#target = get_global_mouse_position()
			#_character._kinematic.move(target)
	var mouse_position  = get_viewport().get_mouse_position()
	if Input.is_action_pressed("l_click"):
		_click_marker.play_animation(mouse_position)
		_click_marker.previous_position_marker(mouse_position)
		#Move character
		_character._kinematic.move(get_global_mouse_position())
	

# Called every frame.  m'delta' is the elapsed time since the previous frame.
func _process(delta): 
	_click_marker.clear_animations()
