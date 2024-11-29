extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	var cena = get_tree().current_scene
	print(cena)
	print(body.name)
	if cena.name == "Fase01" and body.name == "Jogador":
		get_tree().change_scene_to_file("res://levels/fase_02.tscn")
	elif cena.name == "Fase02":
		get_tree().change_scene_to_file("res://levels/fase_01.tscn")
