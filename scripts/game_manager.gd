extends Node

var target_spawn_name: String = ""
var current_save_data: Dictionary = {}

var last_known_direction: int = 1

func save_game(slot_id: int) -> void:
	var mom = get_tree().get_first_node_in_group("Player")
	
	var current_room = get_tree().current_scene.scene_file_path
	current_save_data["current_scene"] = current_room
	
	if mom != null:
		current_save_data["mom_x"] = mom.global_position.x
		current_save_data["mom_y"] = mom.global_positon.y
		current_save_data["current_animation"] = mom.get_node("AnimatedSprite2D").animation
	
	var save_path = "user://save_slot_" + str(slot_id) + ".save"
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	
	file.store_string(JSON.stringify(current_save_data))
	file.close()
	
	print("Success! Saved the game with live data to: ", save_path)
	print("Save Data: ", current_save_data)
