extends CharacterBody3D


@export var _stop_on_slopes = false
@export var _use_snap = false

var _gravity = 20.0

func _physics_process(delta):
	if is_on_floor():
		floor_snap_length = 0.2
	else:
		motion_velocity += Vector3.DOWN * _gravity * delta
		floor_snap_length = 0.0

	floor_stop_on_slope = _stop_on_slopes
	move_and_slide()
