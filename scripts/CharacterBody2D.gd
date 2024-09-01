# Purpose: Handles Movement and collision physics
extends CharacterBody2D

@export var speed = 200
@onready var _character_sprite = $CharacterSprite
#var _velocity = Vector2()
var _moving = false
@onready var _target = position

func _ready():
	pass
	
func move(target):
	_target = target
	_moving = true

func stop():
	_moving = false

func _physics_process(delta):
	print(_moving)
	print(position)
	print(_target)
	if _moving:
		_character_sprite.play("down")
		velocity = position.direction_to(_target) * speed
		if position.distance_to(_target) > 5:
			set_velocity(velocity)
			move_and_slide()
			velocity = velocity
		elif position.distance_to(_target) == 0:
			_moving = false
	if not _moving:
		_character_sprite.stop()
