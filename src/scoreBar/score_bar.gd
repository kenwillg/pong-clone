extends Area2D

var ball: CharacterBody2D

func _ready() -> void:
	ball = get_parent().get_node("ball")

func _on_body_entered(body: Node2D) -> void:
	if body == ball:
		GameManager.enemy_score+=1
		
		print("Enemy Scored +1")
