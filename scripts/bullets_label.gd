extends Label

var bullet_count:int = 0

@onready var bullets: Node2D = $"../../../../../../Scenes/Bullets"

func _ready() -> void:
	text = str(bullet_count).pad_zeros(5)

func _add_bullet() -> void:
	bullet_count += 1
	text = str(bullet_count).pad_zeros(5)
