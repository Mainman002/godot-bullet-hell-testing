extends Node2D

const SPEED:float = 300.00

@onready var bullet_green: Node2D = $"../../Bullet_Green"
@onready var bullet_yellow: Node2D = $"../../Bullet_Yellow"
@onready var bullet_red: Node2D = $"../../Bullet_Red"

@onready var bullets: Node2D = $"../Bullets"
@onready var bullets_label: Label = $"../../UI/PC/MC/VB/GC/Bullets_Label"

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"): position.x -= SPEED * delta
	elif Input.is_action_pressed("ui_right"): position.x += SPEED * delta

	if Input.is_action_pressed("ui_up"): position.y -= SPEED * delta
	elif Input.is_action_pressed("ui_down"): position.y += SPEED * delta

	if Input.is_action_pressed("ui_accept"):
		bullets_label._add_bullet()
		var _t_bullet:Node = null
		if Engine.get_frames_per_second() > 50:
			_t_bullet = bullet_green.duplicate()
			#_t_bullet.modulate = Color.GREEN
		elif Engine.get_frames_per_second() > 40:
			_t_bullet = bullet_yellow.duplicate()
			#_t_bullet.modulate = Color.YELLOW
		else:
			_t_bullet = bullet_red.duplicate()
			#_t_bullet.modulate = Color.RED
		_t_bullet.position = position
		_t_bullet.visible = true
		bullets.add_child(_t_bullet)
