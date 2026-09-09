extends CharacterBody2D
signal state_changed(stateMachine:StateMachine)

@export var character :CharacterBody2D
var stateMachine = StateMachine.new()
var inputReader = InputReader.new()

func _ready() -> void:
	stateMachine.init(character,inputReader)
	state_changed.emit(stateMachine)

func _physics_process(delta: float) -> void:
	inputReader.processFrame()
	if stateMachine.processFrame(delta):
		state_changed.emit(stateMachine)
