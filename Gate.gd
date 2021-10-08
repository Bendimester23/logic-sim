extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var gate_name = "AND"
export var gate_type = 0

sync var asd = ""

var dragged = false

var start_drag = Vector2.ZERO

signal _on_value_change


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("./Label").set("text", gate_name)
	connect("button_down", self, "on_button_down")
	connect("button_up", self, "on_button_up")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dragged:
		set_position(sub_vec(get_global_mouse_position(), start_drag))

func on_button_down():
	start_drag = sub_vec(get_global_mouse_position(), get_rect().position)
	dragged = true

func on_button_up():
	dragged = false
	print("Up")
	
func get_value():
	return 1
	
func sub_vec(a: Vector2, b: Vector2):
	var ax = a.x
	var ay = a.y
	var bx = b.x
	var by = b.y
	return Vector2(ax - bx, ay - by)
	
func add_vec(a: Vector2, b: Vector2):
	var ax = a.x
	var ay = a.y
	var bx = b.x
	var by = b.y
	return Vector2(ax + bx, ay + by)
