extends RigidBody3D

@export var launch_speed: float = 30.0  # Speed of the ball when thrown

# Launch the ball in a given direction
func launch(direction: Vector3):
	linear_velocity = direction.normalized() * launch_speed

# Detect collision with goals or objects
func _integrate_forces(state):
	if global_transform.origin.length() > 100:  # Remove ball if too far from play area
		queue_free()
