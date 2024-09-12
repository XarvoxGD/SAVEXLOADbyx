@tool
extends EditorPlugin


func _enter_tree() -> void:
	add_autoload_singleton("loadxsavebyx", "res://addons/loadxsave/loadxsavebyxa.gd")
	add_custom_type("LoadButton", "Button", preload("res://addons/loadxsave/load_button.gd"), preload("res://icon.svg"))
	add_custom_type("SaveButton", "Button", preload("res://addons/loadxsave/save_button.gd"), preload("res://icon.svg"))


func _exit_tree() -> void:
	remove_custom_type("SaveButton")
	remove_custom_type("LoadButton")
	remove_autoload_singleton("loadxsavebyx")
