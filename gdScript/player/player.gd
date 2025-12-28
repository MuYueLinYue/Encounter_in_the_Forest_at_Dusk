extends Sprite2D

@export var speed = 5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var vector = Vector2.ZERO
	vector.x=Input.get_axis("left","right")
	vector.y=Input.get_axis("up","down")
	position+=vector.normalized()*speed
	pass
