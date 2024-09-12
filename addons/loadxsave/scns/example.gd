extends VBoxContainer

func _on_edit_name_text_changed(new_text: String) -> void:
	loadxsavebyx.name_e = str(new_text)
	$name_l.text = "Hi: " + str(loadxsavebyx.name_e)

func _on_load_button_pressed() -> void:
	var timer = Timer.new()
	timer.wait_time = 0.1
	timer.one_shot = true
	timer.timeout.connect(timerexample)
	add_child(timer)
	timer.start()

func _on_unlock_pressed() -> void:
	loadxsavebyx.level2_unlocked = not loadxsavebyx.level2_unlocked
	$level2.visible = loadxsavebyx.level2_unlocked

func _on_exit_pressed() -> void:
	get_tree().quit()

func timerexample():
	$level2.visible = loadxsavebyx.level2_unlocked
	$name_l.text = "Hi: " + str(loadxsavebyx.name_e)
	$edit_name.text = str(loadxsavebyx.name_e)
