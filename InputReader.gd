extends Node2D

var inputBuffer : InputBuffer = InputBuffer.new()
func _physics_process(delta: float) -> void:
	inputBuffer.update()
