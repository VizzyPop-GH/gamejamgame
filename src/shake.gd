@tool

extends Node2D
@export var amplitude = 1
@export var shaking = false
var offsett = Vector2(0,0) #interal bullshit
@export var pos = Vector2.ZERO

@export var smooth = false
@export var frameblend = 4
@export var lerp = .2

var scr:Vector2 = Vector2.ZERO
var frame = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pos = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if shaking:#
		if !smooth:
			offsett = Vector2(randf_range(0-amplitude, amplitude), randf_range(0-amplitude, amplitude))
			position = pos + offsett
		else:
			frame+=1
			if frame>=frameblend:
				frame = 0
				scr = Vector2(randf_range(0-amplitude, amplitude), randf_range(0-amplitude, amplitude))
				
			offsett = lerp(offsett, scr, lerp)
			position = pos + offsett
			pass
		pass
