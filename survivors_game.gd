extends Node2D

func spawn_mob():
	const MOB = preload("res://mob.tscn")
	var mob = MOB.instantiate()
	
	$%PathFollow2D.progress_ratio = randf()
	
	mob.global_position = $%PathFollow2D.global_position
	
	add_child(mob)


func _on_timer_timeout() -> void:
	spawn_mob()


func _on_player_health_depleted() -> void:
	$GameOver.visible = true
	get_tree().paused = true
