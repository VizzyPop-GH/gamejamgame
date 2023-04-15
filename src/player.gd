extends RigidBody2D
var impulse_strength = 25/2

var bodye:RigidBody2D =null

var moveable = false

func _physics_process(delta):
	if moveable:
		$GPUParticles2D.emitting = Input.is_action_pressed("inputforward")
		$GPUParticles2D2.emitting = Input.is_action_pressed("inputforward")
		$Plr.shaking = Input.is_action_pressed("inputforward")
		
		if Input.is_action_pressed("inputforward"):#
			##if !bodye==null:
				##var angle = 0-rotation
				##bodye.apply_central_impulse(Vector2(cos(angle), sin(angle)) * impulse_strength)
			set_axis_velocity(Vector2.ZERO)
			
			var angle = rotation
			apply_central_impulse(Vector2(cos(angle), sin(angle)) * impulse_strength)

			
		if Input.is_action_pressed("inputl"):
			angular_velocity = -1
		if Input.is_action_pressed("inputr"):
			angular_velocity = 1



func _on_area_2d_area_entered(area):
	pass # Replace with function body.


func _on_area_2d_body_entered(body):
	impulse_strength = 25
	if body is RigidBody2D:
		bodye = body
		


func _on_area_2d_body_exited(body):
	impulse_strength = 25/2
	bodye = null



func _on_animation_player_animation_finished(anim_name):
	moveable = true
