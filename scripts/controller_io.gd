extends XRController3D

func _process(_delta: float) -> void:
	# Use action name from OpenXR Action Map
	# See https://docs.godotengine.org/en/stable/tutorials/xr/xr_action_map.html
	var grip = get_input('grip')
	if grip != null && grip >= 0.99:
		print('grip', grip)
		trigger_haptic_pulse("haptic", 60, 0.5, 0.2, 0)
