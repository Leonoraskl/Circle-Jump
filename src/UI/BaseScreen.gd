extends CanvasLayer

onready var tween = $Tween

func appear():
	get_tree().call_group("buttons", "set_disabled", false)
	
	tween.interpolate_property(self, "offset:x", 500, 0, 0.5, Tween.TRANS_BACK, Tween.EASE_IN_OUT)
	tween.start()


func disappear():
#	verhindert merfachen klicken der buttons 
	get_tree().call_group("buttons", "set_disabled", true)
	
	tween.interpolate_property(self, "offset:x", 0, 500, 0.5, Tween.TRANS_BACK, Tween.EASE_IN_OUT)
	tween.start()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
