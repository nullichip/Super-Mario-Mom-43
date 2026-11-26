extends Node2D

@onready var btn = $PlayBtn

func _on_texture_button_mouse_entered() -> void:
	var hover = create_tween()
	hover.tween_property(btn, "scale", Vector2(0.51, 0.51), 0.1)

func _on_texture_button_mouse_exited() -> void:
	var hover = create_tween()
	hover.tween_property(btn, "scale", Vector2(0.5, 0.5), 0.1)

func _on_texture_button_pressed() -> void:
	var hover = create_tween()
	hover.tween_property(btn, "scale", Vector2(0.5, 0.5), 0.1)
	#await TransitionScreen.transition_to_scene("res://scenes//Story")
