extends Area2D

@export var scorer_name: String

var ball: CharacterBody2D

func _ready() -> void:
	ball = get_parent().get_node("ball")

func _on_body_entered(body: Node2D) -> void:
	if body == ball:
		if scorer_name == "enemy":
			GameManager.enemy_score+=1
			print("Enemy Scored +1")
		elif scorer_name == "player":
			GameManager.player_score+=1
			print("Player Scored +1")
