extends Node2D
class_name CharacterController

@export var pushBox:Area2D
@export var hurtBoxes:Array[Area2D]
@export var hitBoxes:Array[Area2D]
@export var stateMachine:SimpleStateMachine
@export var inputReader:InputReader

var deltaX = 0
var deltaY = 10
func isOnFloor()->bool:
	return position.y + getFeet() >= getGroundY()

func getLeftSide()->int:
	return($PushBox/CollisionShape2D.shape.get_rect().size.x/2-$PushBox/CollisionShape2D.position.x) *self.scale.x
func getRightSide()->int:
	return($PushBox/CollisionShape2D.position.x-$PushBox/CollisionShape2D.shape.get_rect().size.x/2) *self.scale.x
func getTop()->int:
	return($PushBox/CollisionShape2D.position.y-$PushBox/CollisionShape2D.shape.get_rect().size.y/2) *self.scale.y
func getFeet() ->int:
	return($PushBox/CollisionShape2D.position.y-$PushBox/CollisionShape2D.shape.get_rect().size.y/2) *self.scale.y
#

func move(velocity:Vector2):
	deltaX += velocity.x
	deltaY += velocity.y

func testApplyGravity():
	if !isOnFloor():
		position.y += 5
	else:
		position.y = getGroundY()-localFeet()

func getForwardDirection()->int:
	return 1;

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
