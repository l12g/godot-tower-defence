extends Node2D

var max_life=100
var coin=0
var life=max_life

var monsters=[]

func _ready():
	pass
	
func set_max_life(val):
	max_life=val
	life=val