class_name Boss
extends RigidBody2D

var damage_done = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body is Personaje:
		if not damage_done:
			print("Jugador herido")
			damage_done = true
			if body.has_method("damage_received"):
				body.damage_received()
	
