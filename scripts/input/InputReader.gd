extends Node2D
class_name InputReader
var inputBuffer : InputBuffer = InputBuffer.new()
func processFrame() -> void:
	inputBuffer.update()
