extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	Engine.time_scale = 0.5
	print("You died!!")	
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout():
	get_tree().reload_current_scene()
	Engine.time_scale = 1
