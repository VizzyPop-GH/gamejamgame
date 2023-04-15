extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/Button.connect("button_up", start)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start():
	pass
