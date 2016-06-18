
extends PathFollow2D

# member variables here, example:
# var a=2
# var b="textvar"

export(float) var move_speed=2


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	pass

func _process(delta):
	if get_offset()>=0:
		get_node("Sprite").show()
	else:
		get_node("Sprite").hide()
	set_offset(get_offset()+move_speed)

func _on_Area2D_area_enter( area ):
	if get_offset()>0:
		var player=get_node("/root/player")
		player.life-=1
		player.monsters.remove(player.monsters.find(self))
		queue_free()
		
	
