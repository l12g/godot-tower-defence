extends Node2D
func _ready():
	set_process(true)
	pass
	
func _process(delta):
	get_node("life").set_value(get_node("/root/player").life)


