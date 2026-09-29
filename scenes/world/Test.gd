extends Node2D
class_name GameLevel
@export var characters:Array[CharacterController]
@export var ground:int
@export var leftWall:int
@export var rightWall:int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func getGroundY() -> int:
	return ground
func getLeftWall() -> int:
	return leftWall
func getRightWall()->int:
	return rightWall
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _physics_process(delta: float) -> void:
	pass
	#$Node2D.processMovement(characters)
