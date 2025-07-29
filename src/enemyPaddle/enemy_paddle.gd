extends CharacterBody2D

const SPEED := 1000.0

func getYDir() -> float:
	return Input.get_action_strength("enemy_down") - Input.get_action_strength("enemy_up")

func _physics_process(delta: float) -> void:
	var dir:Vector2=Vector2(0, getYDir())
	velocity = dir * SPEED
	move_and_slide()
