extends Node2D
var speed = 10.0 # 速度 像素/秒

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
func _process(delta):
	# 通过左右按键返回水平方向上的移动方向
	# 普通键盘操控模式下，就只能返回1 或者-1,1表示右，而-1表示左。
	var dir_x = Input.get_action_strength("ui_right") - 	Input.get_action_strength("awsd")
	var dir_y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	position.x += dir_x * speed
	position.y += dir_y * speed
