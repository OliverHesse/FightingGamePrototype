extends Node2D
class_name CharacterController

@export var pushBox:Area2D
@export var hurtBoxes:Array[Area2D]
@export var hitBoxes:Array[Area2D]
@export var stateMachine:StateMachine
@export var inputReader:InputReader

var deltaX = 0
var deltaY = 10

func getFeet() ->int:
	return position.y+$PushBox/CollisionShape2D.shape.get_rect().size.y/2
func localFeet()->int:
	return  $PushBox/CollisionShape2D.shape.get_rect().size.y/2
func isOnFloor()->bool:
	return getFeet() >= getGroundY()

func testApplyGravity():
	if !isOnFloor():
		position.y += 5
	else:
		position.y = getGroundY()-localFeet()

func getGroundY() ->int:
	return get_parent().getGroundY() 
func getLeftWallX() ->int:
	return get_parent().getLeftWall()
func getRightWallX()->int:
	return get_parent().getRightWall()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _physics_process(delta: float) -> void:

	print(isOnFloor())
	testApplyGravity()
