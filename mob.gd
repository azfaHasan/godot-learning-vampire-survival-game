extends CharacterBody2D

@onready var playerPosition = get_node("/root/Game/Player")

func _physics_process(delta: float) -> void:
	var direction = global_position.direction_to(playerPosition.global_position)
	velocity = direction * 300.0
	move_and_slide()
