extends Button

func _ready() -> void:
	connect_signals()

func connect_signals():
	self.pressed.connect(_on_save_pressed)

func _on_save_pressed() -> void:
	loadxsavebyx.save_game()
