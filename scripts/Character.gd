extends Node2D

@onready var _status = get_node("Status")
@onready var _kinematic = get_node("CharacterBody2D")
@onready var _sprite = get_node("CharacterBody2D/CharacterSprite")

func _ready():
	pass

func is_hit(pos):
	if _sprite.get_rect().has_point(to_local(pos)):
		return true
	return false

func get_pos():
	return _sprite.position
