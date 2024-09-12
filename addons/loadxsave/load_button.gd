extends Button

func _ready() -> void:
	connect_signals()

func connect_signals():
	self.pressed.connect(_on_lpad_pressed)

func _on_lpad_pressed() -> void:
	loadxsavebyx.load_game()
