extends Label


func _ready() -> void:
	text = str(Engine.get_frames_per_second()).pad_zeros(2)


func _process(_delta: float) -> void:
	text = str(Engine.get_frames_per_second()).pad_zeros(2)
