extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const GATE = preload("res://GateExample.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_AddAnd_pressed():
	print("AND pressed")
	var instance = GATE.instance()
	instance.get_node(".").set("gate_name", "AND")
	get_node("/root/Node2D/Control").add_child(instance)


func _on_AddOr_pressed():
	pass
	###print("OR pressed")
	#var instance = GATE.instance()
	#instance.get_node(".").set("gate_name", "OR")
	#get_node("/root/Node2D/Control").add_child(instance)###


func _on_Add_Pressed(_name, _type):
	var instance = GATE.instance()
	instance.get_node(".").set("gate_name", _name)
	instance.get_node(".").set("gate_type", _type)
	get_node("/root/Node2D/Control").add_child(instance)
