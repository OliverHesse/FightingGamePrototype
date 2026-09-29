extends Node
#meant to act as an abstract class, so CPU and players would have their own versions
class_name InputReader


var inputBuffer : InputBuffer = InputBuffer.new()

func processFrame() -> void:
	pass
