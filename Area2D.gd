extends Area2D




func _ready():
	$ColorRect.color = Color (1,1,0)


func _on_Area2D_body_entered(body):
	$ColorRect.color = Color (1,0,0)


func _on_Area2D_body_exited(body):
	$ColorRect.color = Color (1,1,0)
