extends Node2D

var curlevel = 0

func nextmap():
	curlevel+=1
	update()
	pass
	
func _ready():
	update()
	pass

func update():
	for child in get_children():
		remove_child(child)
	
	var level = load("res://maps/" + str(curlevel)+".tscn")
	if !level==null:
		level = level.instantiate()
		add_child(level)
	pass
