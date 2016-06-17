extends Node



export(float) var num_wave=5
export(float) var num_monster_per_wave=2
export(float) var king_life=100
func _ready():
	var player=get_node("/root/player")
	player.set_max_life(king_life)
	player.monsters.clear()
	get_tree().get_current_scene().get_node("ui").get_node("life").set_max(king_life)
	pass
func start_wave():
	if num_wave>0:
		num_wave-=1
		for i in range(0,num_monster_per_wave):
			var m=load("res://monsters/m1.scn").instance()
			m.offset=-i*50
			add_child(m)
			get_node("/root/player").monsters.append(m)
			
	get_node("king").set_z(999)
	