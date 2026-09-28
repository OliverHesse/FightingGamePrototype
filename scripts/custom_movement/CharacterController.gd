extends Node2D
class_name CharacterController

@export var pushBox:Area2D
@export var hurtBoxes:Array[Area2D]
@export var hitBoxes:Array[Area2D]

var deltaX = 0
var deltaY = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
