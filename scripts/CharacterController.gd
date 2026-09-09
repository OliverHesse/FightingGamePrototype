extends CharacterBody2D
class_name PlayerController
# does not need to be a human, cpu count as player
signal state_changed(stateMachine:StateMachine)

@export var stateMachine:StateMachine
@export var inputReader:InputReader



func _ready() -> void:
	stateMachine.init(self,inputReader)
	state_changed.emit(stateMachine)

func _physics_process(delta: float) -> void:
	inputReader.processFrame()
	if stateMachine.processFrame(delta):
		state_changed.emit(stateMachine)
