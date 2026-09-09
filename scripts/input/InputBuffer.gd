extends Node
class_name InputBuffer


var buffer : Array[FrameInputData] = [FrameInputData.new()]
# Called when the node enters the scene tree for the first time.
func getLastInputDirection() -> Vector2i:
	return buffer[buffer.size()-1].input

#true -> frames == 0 false-> frames > 0
func wasNewFrameInput()->bool:
	return getLastFrameInput().frames == 0

func getLastFrameInput()->FrameInputData:
	return buffer[buffer.size()-1]
	
#index is the distance from the last frame input
func getFrameInput(index : int)->FrameInputData:
	return buffer[buffer.size()-1-index]
	
func update(input:Vector2i):
	var lastFrameData = buffer[buffer.size()-1]
	var frameData = lastFrameData.processFrame(input)
	if frameData != null :
		buffer.append(frameData)
