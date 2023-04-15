extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	var plr = load("res://src/player.tscn")
	plr = plr.instantiate()
	plr.position = $playerstart.position
	$wrapper.add_child(plr)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	z_index = 0
	pass

func nextmap():
	get_parent().nextmap()


func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	nextmap()
