extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var SPEED = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	global_position.x += SPEED*delta
	pass
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass






func _on_projectile_area_entered(area):
	if area.get_name()=="EnemyAINew":
		area.queue_free()
	pass
	
