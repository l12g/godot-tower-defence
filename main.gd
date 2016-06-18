
extends Node2D

func _ready():
	#var lev=load("res://level/le1.scn").instance()
	#add_child(lev)
	#lev.set_name("level")
	#lev.start_wave()
	
	get_node("level/Path2D").start_wave()
	set_process(true)
	

func _process(delta):
	pass


