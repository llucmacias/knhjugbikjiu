extends KinematicBody2D
var velocitat := 230

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position=Vector2(0, 0)
	rotation_degrees=0

func _process(delta):
	var direccio = Vector2.ZERO
	if Input.is_action_pressed("ves_dreta"):
		direccio += Vector2.RIGHT
		$Label.text = "el patica comandando"
	if Input.is_action_pressed("ves_esquerra"):
		direccio += Vector2.LEFT
		$Label.text = "el patica comandando"
	if Input.is_action_pressed("ves_avall"):
		direccio += Vector2.DOWN
		$Label.text = "el patica comandando"
	if Input.is_action_pressed("ves_adalt"):
		direccio += Vector2.UP
		$Label.text = "el patica comandando"
	move_and_slide(direccio.normalized()*velocitat)


func _on_Area2D_body_entered(body):
	if body.name == ("Personatge"):
		pass
