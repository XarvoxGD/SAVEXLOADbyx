extends Node


var name_e := "Jugador"
var level2_unlocked



func save_game():
	var save_data = {
		
		# Add your vars here 
		# Añade tus variables aquí
		
		"name_e": name_e,
		"level2_unlocked": level2_unlocked,
		
		
	}
	var save_file = FileAccess.open("user://savegame.save", FileAccess.WRITE)
	var Json_string = JSON.stringify(save_data)
	save_file.store_line(Json_string)
	save_file.close()
	print("save")

func load_game():
	if FileAccess.file_exists("user://savegame.save"):
		var save_file = FileAccess.open("user://savegame.save", FileAccess.READ)
		var Json_string = save_file.get_line()
		var save_data = JSON.parse_string(Json_string)
		
		# Add your vars here
		# Añade tus variables aquí
		
		name_e = save_data["name_e"]
		level2_unlocked = save_data["level2_unlocked"]
		
		
		save_file.close()
		print("load")
	else:
		print("load failed")
