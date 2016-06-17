
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

export(float) var base_atk=1
export(float) var base_atk_range=100
export(float) var max_level=5
export(float) var cost=100
var level=1

var targets=[]

func _ready():
	set_process(true)
	pass
	
	
func _process(delta):
	get_targets()
	#look_at(get_viewport().get_mouse_pos())
	
func _draw():
	draw_circle(Vector2(0,0),get_atk_range(),Color(255,0,0,.2))

func get_atk():
	return base_atk+ceil(level*.5)
	
func get_atk_range():
	return base_atk_range+level*20

func upgrade():
	level+=1
	if level>=max_level:
		level=int(max_level)
		
		

func get_targets():
	targets.clear()
	var ms=get_node("/root/player").monsters
	for i in range(0,ms.size()):
		var sp=ms[i].get_pos()
		#print(get_pos().distance_to(sp),'xx',get_atk_range())
		if get_pos().distance_to(sp)<get_atk_range():
			targets.append(ms[i])	
			
	var sort=null
	targets.sort_custom(self,"sort_targets")
	
	
	
func sort_targets(a,b):
	if get_pos().distance_to(a.get_pos())<get_pos().distance_to(b.get_pos()):
		return true
	return false
	
	
	
	
	
	
	
